`include "src/Week2/inc16_gate.v"

module inc16_gate_tb();
    reg [15:0] in;
    wire [15:0] out;

    inc16_gate inc(
        .out(out),
        .in(in)
    );

    initial begin
        $display("|        in        |       out        |");
        $monitor("| %b | %b |", in, out);

        in = 16'b0;
        #1
        in = 16'b1111111111111111;
        #1
        in = 16'b101;
        #1
        in = 16'b1111111111111011;
        #1

        $finish;
    end
endmodule