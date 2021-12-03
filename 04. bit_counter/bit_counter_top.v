module bitcount_tb;

reg [0:3] D;
reg EA,Clk,LA,LB;
reg w;
wire a;
wire z;
wire [0:3] A;
wire [0:2] B;
bit_counter cnt(w,LA,EA,Clk,A,LB,B,z,D,a);

initial begin #1 LB=1; #3 LB=0; end
initial begin w = 0; end
initial begin D=4'b0110; end
initial begin Clk=0; repeat(30) #1 Clk=~Clk; end
initial begin #2 LA=1; #10 LA=0;end
initial begin #12 EA=1; end

endmodule