`timescale 1ns/1ps

module cnt (
    input clk, // clock
    input rst, // global reset
    output reg [9:0] cnt
);

always @(posedge clk or posedge rst) begin
    if(rst) begin
        cnt <= 0;
    end
    else begin
        cnt <= cnt + 1;
        if(cnt>=10'd1023)
            cnt <= cnt;
    end
end
    
endmodule