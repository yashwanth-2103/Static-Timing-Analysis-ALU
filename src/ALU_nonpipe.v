// 8-bit Non-Pipelined ALU
module ALU_nonpipe (
    input  [7:0] A, B,
    input  [1:0] OP,       // 00: Add, 01: Sub, 10: AND, 11: OR
    output reg [7:0] Y
);
    always @(*) begin
        case(OP)
            2'b00: Y = A + B;   // Adder delay
            2'b01: Y = A - B;   // Subtractor delay
            2'b10: Y = A & B;   // AND delay
            2'b11: Y = A | B;   // OR delay
        endcase
    end
endmodule

