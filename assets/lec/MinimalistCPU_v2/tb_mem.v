`timescale 1ns/1ns
module test;

    reg set;
    reg [31:0] mem [0:20]; //word length is [31:0], we define 16 words(address 0~15)
    integer i;
    initial begin

        for(i=0;i<=20;i=i+1) begin
            mem[i]=0;
        end

        $readmemh("test_code.hex",mem);

        for(i=0;i<=20;i=i+1) begin
            $display("%h",mem[i]);
        end
    end

endmodule