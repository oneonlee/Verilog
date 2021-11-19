`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/05 23:38:00
// Design Name: 
// Module Name: Mux8_1_ifelse
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

module Mux8_1(w7, w6, w5, w4, w3, w2, w1, w0, S, f);

    input w7, w6, w5, w4, w3, w2, w1, w0;
    input [2:0] S;
    output reg f;
    
    always @(*)
        if(S[2]==0 && S[1]==0 && S[0]==0) f=w0;
        else if(S[2]==0 && S[1]==0 && S[0]==1) f=w1;
        else if(S[2]==0 && S[1]==1 && S[0]==0) f=w2;
        else if(S[2]==0 && S[1]==1 && S[0]==1) f=w3;
        else if(S[2]==1 && S[1]==0 && S[0]==0) f=w4;
        else if(S[2]==1 && S[1]==0 && S[0]==1) f=w5;
        else if(S[2]==1 && S[1]==1 && S[0]==0) f=w6;
        else f=w7;
        

endmodule

