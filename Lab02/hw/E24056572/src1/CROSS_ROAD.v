

module CROSS_ROAD(
  sw,btn,clk,
  led4_b,
  led4_g,
  led4_r,
  led5_b,
  led5_g,
  led5_r,
  ar
);




input   [1:0] sw;
input   [3:0] btn;
input         clk;


output  led4_b,
        led4_g,
        led4_r,
        led5_b,
        led5_g,
        led5_r;
output [13:0] ar;



wire [3:0] btn_new;


//state
parameter Initial = 2'b00,
          Green =2'b01,
          Yellow = 2'b11,
          Red = 2'b10;

//duration of Yellow,Red
parameter Yellow_Time=3'd4,
          Red_Time=3'd4;

//duration of Green (FOR 2 LED)
reg [7:0] Green_Time [1:0] ;

reg SELECTED_LED;

//count down
reg [7:0] timing_counter;


reg resume;


reg [1:0] cstate,nstate;


wire clk_1Hz_Master;
reg clk_1Hz_Slave;



//RGB LED
reg [1:0] RG_LED [1:0];

assign led4_r=RG_LED[0][1];
assign led4_g=RG_LED[0][0];
assign led4_b=sw[0];

assign led5_r=RG_LED[1][1];
assign led5_g=RG_LED[1][0];
assign led5_b=sw[1];

reg [7:0] SevenSegDisplay;
reg flag;

wire clk_1kHz;

//module
Clock_div clk_1Hz_generate(.in_clk(clk),.out_clk(clk_1Hz_Master));
Clock_div  #(.out_Hz(1000)) clk_1kHz_generate(.in_clk(clk),.out_clk(clk_1kHz));

SevenSeg SevenSeg_2(.din(SevenSegDisplay[7:4]),.dout(ar[13:7]));
SevenSeg SevenSeg_1(.din(SevenSegDisplay[3:0]),.dout(ar[6:0]));

debounce de0(.pb_in(btn[0]),.clk(clk_1kHz), .pb_out(btn_new[0]));
debounce de1(.pb_in(btn[1]),.clk(clk_1kHz), .pb_out(btn_new[1]));
debounce de2(.pb_in(btn[2]),.clk(clk_1kHz), .pb_out(btn_new[2]));
debounce de3(.pb_in(btn[3]),.clk(clk_1kHz), .pb_out(btn_new[3]));


///initial resume :continue the led change//
initial
begin
  resume=1'b1;
  Green_Time[0]=8'd15;
  Green_Time[1]=8'd15;
  SELECTED_LED=1'b0;
   
end
/**********************************************/


// for the pause\resume function//

always @(posedge btn_new[2]) begin
  resume<=~resume;
end

always @(clk_1Hz_Master or resume) 
begin
  if (resume) begin
    clk_1Hz_Slave=clk_1Hz_Master;
  end
  
end

/**********************************************/


//place design error would occur without code below
reg [1:0]sw_slave;

always@(posedge clk)
begin
    sw_slave<=sw;
end
///

//determine which to display on 7SEG
always @(*) begin
  if ( sw_slave[0] | sw_slave [1] )
    SevenSegDisplay= Green_Time[sw_slave[1]];
  else
    SevenSegDisplay=timing_counter;
end

/**********************************************/



//RG_LED is corresponed to cstate
always @(*) begin
  RG_LED[SELECTED_LED]=cstate;
  if(cstate==Initial)
  begin
    RG_LED[0]=Green;
    RG_LED[1]=Red;
  end
end
/**********************************************/

reg enable=1'b1;

wire [7:0] offset [1:0];
wire total7,total1;
assign total7=btn_new[0]&(~btn_new[1]);
assign total1=btn_new[0]^btn_new[1];
assign offset[0][7:0]=sw[0]?{ {7{total7}} ,total1 }:8'd0;
assign offset[1][7:0]=sw[1]?{ {7{total7}} ,total1 }:8'd0;

// function for Green_Time period control
always @(posedge clk) begin
    if (btn_new[3]) begin
      Green_Time[0]<=8'd15;
      Green_Time[1]<=8'd15;
    end
    else begin
      if (enable) begin
        Green_Time[1]<=Green_Time[1]+offset[1];
        Green_Time[0]<=Green_Time[sw_slave[0]&sw_slave[1]]+offset[0];
      end
    end
  
end

always @(posedge clk) begin
  if (btn_new[0]|btn_new[1]) begin
    enable<=1'b0;
  end
  else begin
    enable<=1'b1;
  end
end

/**********************************************/




// state change
always@(posedge clk_1Hz_Slave or posedge btn_new[3])
begin
	  if(btn_new[3])
	  	cstate<=2'b00;
	  else
	  	cstate<=nstate;
end
/**********************************************/




//state machine
always @(posedge clk_1Hz_Slave) begin

  case (cstate)

    Initial:
    begin
      
      timing_counter<=Green_Time[SELECTED_LED];
      SELECTED_LED<=1'b0;

    end

    Green:
    begin
      if (timing_counter!=8'd1)
        timing_counter<=timing_counter-1'b1;
      else
        timing_counter<=Yellow_Time;
    end

    Yellow:
    begin
      if (timing_counter!=8'd1)
        timing_counter<=timing_counter-1'b1;
      else
        timing_counter<=Red_Time;
    end

    Red:
    begin
      if (timing_counter!=8'd1)begin
        timing_counter<=timing_counter-1'b1;
        if(timing_counter==8'd2)
          SELECTED_LED<=~SELECTED_LED;
        else
            SELECTED_LED<=SELECTED_LED;
      end
      else
        timing_counter<=Green_Time[SELECTED_LED];
    end 
    
    default:
    begin
    end 

  endcase
end



always @(cstate) 
begin
  case (cstate)

    Initial:
    begin
      nstate=Green;
    end

    Green:
    begin
      if (timing_counter==8'd1)
        nstate=Yellow;
      else
        nstate=Green;
    end

    Yellow:
    begin
      if (timing_counter==8'd1)
        nstate=Red;
      else
        nstate=Yellow;
    end 

    Red:
    begin
      if (timing_counter==8'd1)
        nstate=Green;
      else
        nstate=Red;
    end 


    default: 
    begin
      nstate=Initial;
    end

  endcase
end

endmodule // 