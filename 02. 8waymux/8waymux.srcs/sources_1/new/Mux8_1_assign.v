`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/05 23:35:38
// Design Name: 
// Module Name: Mux8_1
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
    output f;
    
    wire s2n, s1n, s0n;
    wire y0, y1, y2, y3, y4, y5, y6, y7;
    
    not (s2n, S[2]);
    not (s1n, S[1]);
    not (s0n, S[0]);
    
    and (y0, w0, s2n, s1n, s0n);
    and (y1, w1, s2n, s1n, S[0]);
    and (y2, w2, s2n, S[1], s0n);
    and (y3, w3, s2n, S[1], S[0]);
    and (y4, w4, S[2], s1n, s0n);
    and (y5, w5, S[2], s1n, S[0]);
    and (y6, w6, S[2], S[1], s0n);
    and (y7, w7, S[2], S[1], S[0]);

    
    or (f, y0, y1, y2, y3, y4, y5, y6, y7);

endmodule
