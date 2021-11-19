`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/19 15:14:11
// Design Name: 
// Module Name: upcount_top
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


module upcount_top;
  reg Clock,Resetn,L,E;
  reg [3:0] R;
  wire [3:0] Q;
  // instance Qer design
  upcount ct_1(R, Resetn, Clock, E, L, Q);
  //clock generator
  initial begin Clock = 1'b0; repeat(30) #3 Clock= ~Clock;end
  //insert all the input signal
  initial begin Resetn=1'b0;#7 Resetn=1'b1; #35 Resetn=1'b0;end
  initial begin #12 L=1'b1; #5 L=1'b0; end
  initial begin #2 E=1'b1; #30 E=1'b0; end
  initial begin R=4'b1000; #14 R=4'b1101; #2 R=4'b1111;end

endmodule
