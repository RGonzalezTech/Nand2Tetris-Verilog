`include "src/Week1/not16_gate.v"

module not16_gate_tb();
    reg [15:0] in;
    wire [15:0] out;

    not16_gate not16(
        .out(out),
        .in(in)
    );

    initial begin
        $display("|        in        |       out        |");
        $monitor("| %b | %b |", in, out);

        in = 16'b0000000000000000;
        #1
        in = 16'b1111111111111111;
        #1
        in = 16'b1010101010101010;
        #1
        in = 16'b0011110011000011;
        #1
        in = 16'b0001001000110100;
        #1
        $finish;
    end
endmodule