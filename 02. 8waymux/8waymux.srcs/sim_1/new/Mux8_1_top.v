`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/06 00:37:40
// Design Name: 
// Module Name: Mux8_1_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Mux8_1_top();  //��Ʈ�� ������ �׽�Ʈ�� �ڵ��� ���� �� �� �ִ�.
 
 //�Է����� ����Ǵ� �������� ����
 reg w7, w6, w5, w4, w3, w2, w1, w0;
 reg [2:0] S;

 wire OUTPUT; //��� wire����

 Mux8_1 mymux (w7, w6, w5, w4, w3, w2, w1, w0, S, OUTPUT); //��Ƽ�÷����� �Ļ�

    
initial begin
     w7=1; w6=0; w5=1; w4=0; w3=1; w2=0; w1=1; w0=0;
     S[2] = 0; S[1] = 0; S[0] = 0;
     #1 $display("S[2] = %b, S[1] = %b, S[0] = %b, OUTPUT = %b \n", S[2], S[1], S[0], OUTPUT);
     S[2] = 0; S[1] = 0; S[0] = 1;
     #1 $display("S[2] = %b, S[1] = %b, S[0] = %b, OUTPUT = %b \n", S[2], S[1], S[0], OUTPUT);
     S[2] = 0; S[1] = 1; S[0] = 0;
     #1 $display("S[2] = %b, S[1] = %b, S[0] = %b, OUTPUT = %b \n", S[2], S[1], S[0], OUTPUT);
     S[2] = 0; S[1] = 1; S[0] = 1;
     #1 $display("S[2] = %b, S[1] = %b, S[0] = %b, OUTPUT = %b \n", S[2], S[1], S[0], OUTPUT);
     S[2] = 1; S[1] = 0; S[0] = 0;
     #1 $display("S[2] = %b, S[1] = %b, S[0] = %b, OUTPUT = %b \n", S[2], S[1], S[0], OUTPUT);
     S[2] = 1; S[1] = 0; S[0] = 1;
     #1 $display("S[2] = %b, S[1] = %b, S[0] = %b, OUTPUT = %b \n", S[2], S[1], S[0], OUTPUT);
     S[2] = 1; S[1] = 1; S[0] = 0;
     #1 $display("S[2] = %b, S[1] = %b, S[0] = %b, OUTPUT = %b \n", S[2], S[1], S[0], OUTPUT);
     S[2] = 1; S[1] = 1; S[0] = 1;
     #1 $display("S[2] = %b, S[1] = %b, S[0] = %b, OUTPUT = %b \n", S[2], S[1], S[0], OUTPUT);
end

endmodule


