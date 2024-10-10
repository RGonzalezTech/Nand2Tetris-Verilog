`include "src/Week1/dmux_4way_gate.v"

module dmux_4way_gate_tb();
    reg in;
    reg [1:0] sel;

    wire a, b, c, d;

    dmux_4way_gate dmux(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .in(in),
        .sel(sel)
    );

    initial begin
        $display("|in | sel  | a | b | c | d |");
        $monitor("| %b |  %b  | %b | %b | %b | %b |", in, sel, a, b, c, d);
        
        // Test case 1
        in = 1'b0;
        sel = 2'b00;
        #1;

        // Test case 2
        sel = 2'b01;
        #1;

        // Test case 3
        sel = 2'b10;
        #1;

        // Test case 4
        sel = 2'b11;
        #1;

        // Test case 5
        in = 1'b1;
        sel = 2'b00;
        #1;

        // Test case 6
        sel = 2'b01;
        #1;

        // Test case 7
        sel = 2'b10;
        #1;

        // Test case 8
        sel = 2'b11;
        #1;

        $finish;
    end
endmodule