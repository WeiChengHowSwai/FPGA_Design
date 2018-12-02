module djb2(
    input [31:0]data_in,
    output reg [31:0]data_out
);
reg [31:0] hash_temp,hash;
reg [31:0] one;
reg [31:0] two;
reg [31:0] three;
reg [31:0] four;
always@(*)begin
hash=32'd0;
hash_temp=32'd0;
one={24'd0,data_in[7:0]};
two={24'd0,data_in[15:8]};
three={24'd0,data_in[23:16]};
four={24'd0,data_in[31:24]};

hash=(hash_temp<<5)+hash_temp+one;

hash_temp=hash;
hash=(hash_temp<<5)+hash_temp +two;
hash_temp=hash;
hash=(hash_temp<<5) +hash_temp+three;
hash_temp=hash;
hash=(hash_temp<<5) +hash_temp+four;

data_out=hash;
end
endmodule
