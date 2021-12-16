module bit_counter(w, LA, EA, clk, Data, rst, A, B, LB, EB, z, a0);
input w, LA, EA, clk, rst, LB, EB;
input [3:0] Data;


output reg [3:0] A;
output reg [2:0] B;
output reg a0;
output z;

// input과 output을 각각 정의함

assign z = ~(A[0] | A[1] | A[2] | A[3]);

 // z에 A[0]부터 A[3] 까지를 nor 한 값을 넣음
always @(posedge clk or negedge rst)
begin
    if (!rst) begin
        A <= 4'b0; // 리셋이 0이면 A에 0 대입
    end
    else begin
        if(LA) A <= Data; // LA가 1이 되면 A에 Data 넣음
        else if(EA) begin
            a0 <= A[0];
            A[0] <= A[1];
            A[1] <= A[2];
            A[2] <= A[3];
            A[3] <= w;
        end
    end // EA가 1이면 A[0]값을 a0에 넣고 나머지 shift
end

// shift module


always @(posedge clk or negedge rst or posedge a0)
begin
    if(!rst) begin
        B <= 3'b0; // 리셋이 0이 되면 B에 0 대입
    end
    else if(!z) begin 
        if (LB) B <= 3'b0; // LB가 1이면 B에 0 대입
        else if(EA) begin
            if(a0) B <= B + 1;
        end // 그렇지 않고 EA가 1이고, a0에 1이 담긴 동안 B를 1씩 증가 시킴
    end
end            
endmodule
