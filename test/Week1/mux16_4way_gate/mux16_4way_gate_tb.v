`include "src/Week1/mux16_4way_gate.v"

module mux16_4way_gate_tb();
    reg [15:0] a;
    reg [15:0] b;
    reg [15:0] c;
    reg [15:0] d;
    reg [1:0] sel; // 00, 01, 10, 11

    wire [15:0] out;

    mux16_4way_gate mux4(
        .out(out),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .sel(sel)
    );

    initial begin
        $display("|        a         |        b         |        c         |        d         | sel  |       out        |");
        $monitor("| %b | %b | %b | %b |  %b  | %b |", a, b, c, d, sel, out);

        // Test case 1
        a = 16'b0000000000000000;
        b = 16'b0000000000000000;
        c = 16'b0000000000000000;
        d = 16'b0000000000000000;
        sel = 2'b00;
        #1;
        
        // Test case 2
        a = 16'b0000000000000000;
        b = 16'b0000000000000000;
        c = 16'b0000000000000000;
        d = 16'b0000000000000000;
        sel = 2'b01;
        #1;
        
        // Test case 3
        a = 16'b0000000000000000;
        b = 16'b0000000000000000;
        c = 16'b0000000000000000;
        d = 16'b0000000000000000;
        sel = 2'b10;
        #1;
        
        // Test case 4
        a = 16'b0000000000000000;
        b = 16'b0000000000000000;
        c = 16'b0000000000000000;
        d = 16'b0000000000000000;
        sel = 2'b11;
        #1;
        
        // Test case 5
        a = 16'b0001001000110100;
        b = 16'b1001100001110110;
        c = 16'b1010101010101010;
        d = 16'b0101010101010101;
        sel = 2'b00;
        #1;
        
        // Test case 6
        a = 16'b0001001000110100;
        b = 16'b1001100001110110;
        c = 16'b1010101010101010;
        d = 16'b0101010101010101;
        sel = 2'b01;
        #1;
        
        // Test case 7
        a = 16'b0001001000110100;
        b = 16'b1001100001110110;
        c = 16'b1010101010101010;
        d = 16'b0101010101010101;
        sel = 2'b10;
        #1;
        
        // Test case 8
        a = 16'b0001001000110100;
        b = 16'b1001100001110110;
        c = 16'b1010101010101010;
        d = 16'b0101010101010101;
        sel = 2'b11;
        #1;

        $finish;
    end
endmodule