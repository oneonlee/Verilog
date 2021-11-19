`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/19 15:18:53
// Design Name: 
// Module Name: updowncount_top
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

module updowncount_top;
  reg Clock,Resetn,L,E,up_down;
  parameter n = 8;
  reg [n-1:0] R;
  wire [n-1:0] Q;
  // instance Qer design
  updowncount ct_1(R, Resetn, Clock, E, up_down, L, Q);
  //clock generator
  initial begin Clock = 1'b0; repeat(30) #3 Clock= ~Clock;end
  //insert all the input signal
  initial begin Resetn=1'b0;#7 Resetn=1'b1; #35 Resetn=1'b0;end
  initial begin #12 L=1'b1; #5 L=1'b0; end
  initial begin #2 E=1'b1; #30 E=1'b0; end
  initial begin #5 up_down=1'b1;#24 up_down=1'b0;end
  initial begin R=4'b1000; #14 R=4'b1101; #2 R=4'b1111;end

endmodule