`timescale 1ns/1ps

module vector_reg_tb;

reg clk;
reg reset;
reg enable;
reg [7:0] data_in;
wire [7:0] data_out;

vector_reg uut (
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .data_in(data_in),
    .data_out(data_out)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;
    enable = 0;
    data_in = 8'b00000000;

    #10 reset = 0;

    #10 enable = 1;
    data_in = 8'b10101010;

    #10 enable = 0;

    #20 $finish;
end

endmodule