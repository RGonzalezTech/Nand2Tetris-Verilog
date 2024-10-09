`include "src/Week1/or16_gate.v"

module or16_gate_tb();
    reg [15:0] a;
    reg [15:0] b;

    wire [15:0] out;

    or16_gate or16(
        .out(out),
        .a(a),
        .b(b)
    );

    initial begin
        $display("|        a         |        b         |       out        |");
        $monitor("| %b | %b | %b |", a, b, out);

        a = 16'b0000000000000000;
        b = 16'b0000000000000000;
        #3
        b = 16'b1111111111111111;
        #3
        a = 16'b1111111111111111;
        #3
        a = 16'b1010101010101010;
        b = 16'b0101010101010101;
        #3
        a = 16'b0011110011000011;
        b = 16'b0000111111110000;
        #3
        a = 16'b0001001000110100;
        b = 16'b1001100001110110;
        #3
        $finish;
    end
endmodule