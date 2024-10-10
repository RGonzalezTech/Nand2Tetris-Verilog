`include "src/Week1/mux16_8way_gate.v"

module mux16_8way_gate_tb();
    reg [15:0] a, b, c, d, e, f, g, h;
    reg [2:0] sel;
    wire [15:0] out;

    mux16_8way_gate mux(
        .out(out),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g),
        .h(h),
        .sel(sel)
    );

    initial begin
        $display("|        a         |        b         |        c         |        d         |        e         |        f         |        g         |        h         |  sel  |       out        |");
        $monitor("| %b | %b | %b | %b | %b | %b | %b | %b |  %b  | %b |", a, b, c, d, e, f, g, h, sel, out);
        
        // Test case 1
        a = 16'b0000000000000000;
        b = 16'b0000000000000000;
        c = 16'b0000000000000000;
        d = 16'b0000000000000000;
        e = 16'b0000000000000000;
        f = 16'b0000000000000000;
        g = 16'b0000000000000000;
        h = 16'b0000000000000000;
        sel = 3'b000;
        #1;

        // Test case 2
        sel = 3'b001;
        #1;

        // Test case 3
        sel = 3'b010;
        #1;

        // Test case 4
        sel = 3'b011;
        #1;

        // Test case 5
        sel = 3'b100;
        #1;

        // Test case 6
        sel = 3'b101;
        #1;

        // Test case 7
        sel = 3'b110;
        #1;

        // Test case 8
        sel = 3'b111;
        #1;

        // Test case 9
        a = 16'b0001001000110100;
        b = 16'b0010001101000101;
        c = 16'b0011010001010110;
        d = 16'b0100010101100111;
        e = 16'b0101011001111000;
        f = 16'b0110011110001001;
        g = 16'b0111100010011010;
        h = 16'b1000100110101011;
        sel = 3'b000;
        #1;

        // Test case 10
        sel = 3'b001;
        #1;

        // Test case 11
        sel = 3'b010;
        #1;

        // Test case 12
        sel = 3'b011;
        #1;

        // Test case 13
        sel = 3'b100;
        #1;

        // Test case 14
        sel = 3'b101;
        #1;

        // Test case 15
        sel = 3'b110;
        #1;

        // Test case 16
        sel = 3'b111;
        #1;

        $finish;
    end
endmodule