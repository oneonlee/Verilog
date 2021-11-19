

module Mux8_1(w7, w6, w5, w4, w3, w2, w1, w0, S, f);

    input w7, w6, w5, w4, w3, w2, w1, w0;
    input [2:0] S;
    output reg f;
    
    always @(*)
        case (S)
            0:f=w0;
            1:f=w1;
            2:f=w2;
            3:f=w3;
            4:f=w4;
            5:f=w5;
            6:f=w6;
            7:f=w7;
        endcase
        
endmodule
