`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/19 14:44:32
// Design Name: 
// Module Name: downcount
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

module updowncount(R, Resetn, Clock, E, up_down, L, Q);
  //define input and ouput ports
  parameter n = 8;
  input [n-1:0] R;
  input Clock,Resetn,L,E,up_down;
  output reg [n-1:0] Q;
  //always block will be executed at each and every positive edge of the clock
  always@(negedge Resetn or posedge Clock) 
    if(!Resetn)    			    //Set counter to Zero
        Q <= 0;
    else if(L)    			
        Q <= R;
    else if(E)
        if(up_down)             //count up
            Q <= Q + 1;
        else            		//count down
            Q <= Q - 1;
endmodule