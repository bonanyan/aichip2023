`timescale 1ns/1ps


module cnt (
    input clk, // clock
    input rst, // global reset
    output reg [9:0] cnt
);

reg [9:0] cnt_m;

always @(posedge clk) begin
    if(rst) begin
        cnt <= 0;
        cnt_m <= cnt;
    end
    else begin
        cnt <= cnt + 1;
        if(cnt>=10'd1023)
            cnt <= cnt;

        cnt_m <= cnt_m + 2;
    end
end
    
endmodule
