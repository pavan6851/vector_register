`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Design Name: 
// Module Name: vector_reg
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


module vector_reg (
    input wire clk,
    input wire reset,
    input wire enable,
    input wire [7:0] data_in,
    output reg [7:0] data_out
);

always @(posedge clk or posedge reset) begin
    if (reset)
        data_out <= 8'b00000000;
    else if (enable)
        data_out <= data_in;
end

endmodule
