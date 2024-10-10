`include "src/Week1/dmux_8way_gate.v"

module dmux_8way_gate_tb();
    wire a, b, c, d, e, f, g, h;
    reg in;
    reg [2:0] sel; // 3-bit selector (8-way)

    dmux_8way_gate dmux(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g),
        .h(h),
        .in(in),
        .sel(sel)
    );

    initial begin
        $display("|in |  sel  | a | b | c | d | e | f | g | h |");
        $monitor("| %b |  %b  | %b | %b | %b | %b | %b | %b | %b | %b |", in, sel, a, b, c, d, e, f, g, h);
        
        // Test case 1
        in = 1'b0;
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
        in = 1'b1;
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