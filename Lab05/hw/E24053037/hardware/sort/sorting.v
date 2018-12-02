module sorting(
    input [31:0]a1,
    input [31:0]a2,
    input [31:0]a3,
    input [31:0]a4,
    output reg [31:0]y1,
    output reg [31:0]y2,
    output reg [31:0]y3,
    output reg [31:0]y4
    );

task sort;
    integer i,j;
    input [31:0] b1,b2,b3,b4;
    output [31:0] d1,d2,d3,d4;
    reg [31:0]q[3:0];
    reg [31:0]r;
    begin
        q[0]=b1;q[1]=b2;q[2]=b3;q[3]=b4;
        for(i=0;i<3;i=i+1)
        begin
            for(j=i+1;j<4;j=j+1)
                if(q[i]>q[j])
                begin
                r=q[i];
                q[i]=q[j];
                q[j]=r;
                end
            end
            d1=q[0];d2=q[1];d3=q[2];d4=q[3];
        end
endtask
always @(*)
sort(a1,a2,a3,a4,y1,y2,y3,y4);
endmodule