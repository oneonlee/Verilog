module tb_example;

reg [7:0] R;
reg Clock,Resetn,L,E,up_down;
wire[7:0] Q;


initial begin
Clock=0;
Resetn = 1;
#10 Resetn = 0;
#10 Resetn = 1;

//.....
//
end


always begin
#5 Clock = ~Clock;
end


endmodule
