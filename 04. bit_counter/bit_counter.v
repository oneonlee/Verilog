module bit_counter(w,LA,EA,Clk,A,LB,B,z,D,a);

input w;
input EA,Clk,LA,LB;
input [0:3] D;
output reg [0:3]A;
output reg a,z;
output reg[0:2]B;

always@(posedge Clk or !z) begin

    if(LA) begin
        A<=D;
    end    
    
    else if(EA) begin
        A[0]<=w;
        A[1]<=A[0];
        A[2]<=A[1];
        A[3]<=A[2];
        a<=A[3];
    end

    if(LB) begin
        B<=0;
    end

    if(a) begin
        B <= B+1;
    end

    assign z = ~(A[0]|A[1]|A[2]|A[3]);

end
endmodule