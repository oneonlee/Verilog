module bitcounter_tb();
reg [3:0] Data;
reg clk, rst, LA, LB, EA, EB, w;
wire a0, z;
wire [3:0] A;
wire [2:0] B; 
bit_counter mybitcount(w, LA, EA, clk, Data, rst, A, B, LB, EB, z, a0);

always #3 clk = ~clk; // clk은 3 단위로 바뀌게 설정함
initial begin
clk = 0; rst = 1; w = 0; Data = 4'b1011; LA = 4'b0000; EB = 0; EA = 0; // 리셋은 초기 1로 설정해놓고 Data를 7로 설정해놓고 1이 3개인 출력값을 확인하도록 함
#5 LB = 0; EB = 0; 
#20 rst = 0; // 리셋이 0이 될 때의 값 변화 확인
#10 rst = 1; // 다시 리셋을 1로 만들고 정상 진행
#10 LA = 1; EA = 1; 
#5 EB = 1; 
#10 LA = 0;
end
endmodule
