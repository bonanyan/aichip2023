`timescale 1ns/1ps
`include "cnt_mutant.v"

module tb;

wire [9:0] cnt1;
reg clk1, rst1;

cnt inst1 (
    .clk( clk1 )
    ,.rst( rst1 )
    ,.cnt( cnt1 )
    );

initial clk1 = 0;
always #5 clk1 = ~clk1;

initial begin
    #1 rst1 = 1;
    #(10*3) rst1 = 0;
    #(10*20) rst1 = 1;
    #(10*1) rst1 = 0;
    #(10*1500) $finish;
end

initial begin
    $dumpfile("cnt_bn.vcd");
    $dumpvars(0,tb);
end



endmodule
