
`timescale 1ns/1ps

module test;

  reg signed [3:0] x ;
  reg signed [3:0] y ;
  reg signed [3:0] z ;
  
  initial begin
  #1 x = -4'd1;
  #1 y = x<<1;
  #1 z = y>>1;
  end

  initial begin
    $monitor("x = %d, y = %d, z = %d", x,y,z);
    #10 $finish;
  end

  initial begin
      $dumpfile("b.vcd");
      $dumpvars(0,test);
  end
  
endmodule
