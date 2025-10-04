`timescale 1ns/1ps
module tb_ALU_pipe;
    reg clk;
    reg [7:0] A, B;
    reg [1:0] OP;
    wire [7:0] Y;

    ALU_pipe dut (.clk(clk), .A(A), .B(B), .OP(OP), .Y(Y));

    initial clk = 0;
    always #5 clk = ~clk; // 10ns clock period

    initial begin
        $display("Time\tA\tB\tOP\tY");
        $monitor("%0t\t%0d\t%0d\t%02b\t%0d",$time,A,B,OP,Y);

        // Test Add
        A = 8'd10; B = 8'd5; OP = 2'b00; #10;
        // Test Sub
        A = 8'd20; B = 8'd7; OP = 2'b01; #10;
        // Test AND
        A = 8'b10101010; B = 8'b11001100; OP = 2'b10; #10;
        // Test OR
        A = 8'b10101010; B = 8'b11001100; OP = 2'b11; #10;

        $finish;
    end
endmodule
