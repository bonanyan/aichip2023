
`timescale 1ns/1ns

module counter_tb;


wire [5:0] output1;
reg clk;
reg rst;

initial begin 
    clk = 0; 
end
always #2 clk = ~clk;

initial begin
    #1 rst = 0;
    #2 rst = 1;
    #1 rst = 0;
    #21 rst = 1;
    #22 rst = 0;
    #100 $finish;
end

initial begin            
    $dumpfile("wave.vcd");        //generate wave.vcd
    $dumpvars(0, counter_tb);    //dump all of the TB module data
end

counter instance0 (
    .clk ( clk )
    ,.rst ( rst )
    ,.num (output1[5:0])
);

endmodule


module counter(
    input clk,
    input rst,
    output reg [5:0] num

);

always @(posedge clk) begin
    if(rst==1) begin
        num = 6'd0;
    end
    else begin
        num = num + 1;
    end
end

endmodule
