`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/19 16:42:56
// Design Name: 
// Module Name: downcount_top
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


module downcount_top;
  reg Clock,Resetn,L,E;
  parameter n = 8;
  reg [n-1:0] R;
  wire [n-1:0] Q;
  // instance Qer design
  downcount ct_1(R, Resetn, Clock, E, L, Q);
  //clock generator
  initial begin Clock = 1'b0; repeat(30) #3 Clock= ~Clock;end
  //insert all the input signal
  initial begin Resetn=1'b0;#7 Resetn=1'b1; #35 Resetn=1'b0;end
  initial begin #12 L=1'b1; #5 L=1'b0; end
  initial begin #2 E=1'b1; #30 E=1'b0; end
  initial begin R=4'b1000; #14 R=4'b1101; #2 R=4'b1111;end

endmodule
