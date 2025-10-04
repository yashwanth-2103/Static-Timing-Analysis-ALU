// 8-bit Pipelined ALU (1-stage pipeline)
module ALU_pipe (
    input clk,
    input  [7:0] A, B,
    input  [1:0] OP,
    output reg [7:0] Y
);
    reg [7:0] alu_result;

    // Combinational logic
    always @(*) begin
        case(OP)
            2'b00: alu_result = A + B;
            2'b01: alu_result = A - B;
            2'b10: alu_result = A & B;
            2'b11: alu_result = A | B;
        endcase
    end

    // Pipeline register
    always @(posedge clk) begin
        Y <= alu_result;
    end
endmodule
