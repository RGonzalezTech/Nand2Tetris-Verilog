`include "src/Week2/alu_gate.v"

module alu_gate_tb();
    reg [15:0] x, y;
    reg zx, nx, zy, ny, f, no;

    wire [15:0] out;
    wire zr, ng;

    alu_gate alu(
        .out(out),
        .zr(zr),
        .ng(ng),
        .x(x),
        .y(y),
        .zx(zx),
        .nx(nx),
        .zy(zy),
        .ny(ny),
        .f(f),
        .no(no)
    );

    initial begin
        $display("|        x         |        y         |zx |nx |zy |ny | f |no |       out        |zr |ng |");
        $monitor("| %b | %b | %b | %b | %b | %b | %b | %b | %b | %b | %b |", x, y, zx, nx, zy, ny, f, no, out, zr, ng);

        x = 16'b0000000000000000;  // x = 0
        y = 16'b1111111111111111;  // y = -1

        // Compute 0
        zx = 1'b1;
        nx = 1'b0;
        zy = 1'b1;
        ny = 1'b0;
        f =  1'b1;
        no = 1'b0;
        #1;

        // Compute 1
        zx = 1'b1;
        nx = 1'b1;
        zy = 1'b1;
        ny = 1'b1;
        f =  1'b1;
        no = 1'b1;
        #1;

        // Compute -1
        zx = 1'b1;
        nx = 1'b1;
        zy = 1'b1;
        ny = 1'b0;
        f =  1'b1;
        no = 1'b0;
        #1;

        // Compute x
        zx = 1'b0;
        nx = 1'b0;
        zy = 1'b1;
        ny = 1'b1;
        f =  1'b0;
        no = 1'b0;
        #1;

        // Compute y
        zx = 1'b1;
        nx = 1'b1;
        zy = 1'b0;
        ny = 1'b0;
        f =  1'b0;
        no = 1'b0;
        #1;

        // Compute !x
        zx = 1'b0;
        nx = 1'b0;
        zy = 1'b1;
        ny = 1'b1;
        f =  1'b0;
        no = 1'b1;
        #1;

        // Compute !y
        zx = 1'b1;
        nx = 1'b1;
        zy = 1'b0;
        ny = 1'b0;
        f =  1'b0;
        no = 1'b1;
        #1;

        // Compute -x
        zx = 1'b0;
        nx = 1'b0;
        zy = 1'b1;
        ny = 1'b1;
        f =  1'b1;
        no = 1'b1;
        #1;

        // Compute -y
        zx = 1'b1;
        nx = 1'b1;
        zy = 1'b0;
        ny = 1'b0;
        f =  1'b1;
        no = 1'b1;
        #1;

        // Compute x + 1
        zx = 1'b0;
        nx = 1'b1;
        zy = 1'b1;
        ny = 1'b1;
        f =  1'b1;
        no = 1'b1;
        #1;

        // Compute y + 1
        zx = 1'b1;
        nx = 1'b1;
        zy = 1'b0;
        ny = 1'b1;
        f =  1'b1;
        no = 1'b1;
        #1;

        // Compute x - 1
        zx = 1'b0;
        nx = 1'b0;
        zy = 1'b1;
        ny = 1'b1;
        f =  1'b1;
        no = 1'b0;
        #1;

        // Compute y - 1
        zx = 1'b1;
        nx = 1'b1;
        zy = 1'b0;
        ny = 1'b0;
        f =  1'b1;
        no = 1'b0;
        #1;

        // Compute x + y
        zx = 1'b0;
        nx = 1'b0;
        zy = 1'b0;
        ny = 1'b0;
        f =  1'b1;
        no = 1'b0;
        #1;

        // Compute x - y
        zx = 1'b0;
        nx = 1'b1;
        zy = 1'b0;
        ny = 1'b0;
        f =  1'b1;
        no = 1'b1;
        #1;

        // Compute y - x
        zx = 1'b0;
        nx = 1'b0;
        zy = 1'b0;
        ny = 1'b1;
        f =  1'b1;
        no = 1'b1;
        #1;

        // Compute x & y
        zx = 1'b0;
        nx = 1'b0;
        zy = 1'b0;
        ny = 1'b0;
        f =  1'b0;
        no = 1'b0;
        #1;

        // Compute x | y
        zx = 1'b0;
        nx = 1'b1;
        zy = 1'b0;
        ny = 1'b1;
        f =  1'b0;
        no = 1'b1;
        #1;

        x = 16'b000000000010001;  // x = 17
        y = 16'b000000000000011;  // y =  3

        // Compute 0
        zx = 1'b1;
        nx = 1'b0;
        zy = 1'b1;
        ny = 1'b0;
        f =  1'b1;
        no = 1'b0;
        #1;

        // Compute 1
        zx = 1'b1;
        nx = 1'b1;
        zy = 1'b1;
        ny = 1'b1;
        f =  1'b1;
        no = 1'b1;
        #1;

        // Compute -1
        zx = 1'b1;
        nx = 1'b1;
        zy = 1'b1;
        ny = 1'b0;
        f =  1'b1;
        no = 1'b0;
        #1;

        // Compute x
        zx = 1'b0;
        nx = 1'b0;
        zy = 1'b1;
        ny = 1'b1;
        f =  1'b0;
        no = 1'b0;
        #1;

        // Compute y
        zx = 1'b1;
        nx = 1'b1;
        zy = 1'b0;
        ny = 1'b0;
        f =  1'b0;
        no = 1'b0;
        #1;

        // Compute !x
        zx = 1'b0;
        nx = 1'b0;
        zy = 1'b1;
        ny = 1'b1;
        f =  1'b0;
        no = 1'b1;
        #1;

        // Compute !y
        zx = 1'b1;
        nx = 1'b1;
        zy = 1'b0;
        ny = 1'b0;
        f =  1'b0;
        no = 1'b1;
        #1;

        // Compute -x
        zx = 1'b0;
        nx = 1'b0;
        zy = 1'b1;
        ny = 1'b1;
        f =  1'b1;
        no = 1'b1;
        #1;

        // Compute -y
        zx = 1'b1;
        nx = 1'b1;
        zy = 1'b0;
        ny = 1'b0;
        f =  1'b1;
        no = 1'b1;
        #1;

        // Compute x + 1
        zx = 1'b0;
        nx = 1'b1;
        zy = 1'b1;
        ny = 1'b1;
        f =  1'b1;
        no = 1'b1;
        #1;

        // Compute y + 1
        zx = 1'b1;
        nx = 1'b1;
        zy = 1'b0;
        ny = 1'b1;
        f =  1'b1;
        no = 1'b1;
        #1;

        // Compute x - 1
        zx = 1'b0;
        nx = 1'b0;
        zy = 1'b1;
        ny = 1'b1;
        f =  1'b1;
        no = 1'b0;
        #1;

        // Compute y - 1
        zx = 1'b1;
        nx = 1'b1;
        zy = 1'b0;
        ny = 1'b0;
        f =  1'b1;
        no = 1'b0;
        #1;

        // Compute x + y
        zx = 1'b0;
        nx = 1'b0;
        zy = 1'b0;
        ny = 1'b0;
        f =  1'b1;
        no = 1'b0;
        #1;

        // Compute x - y
        zx = 1'b0;
        nx = 1'b1;
        zy = 1'b0;
        ny = 1'b0;
        f =  1'b1;
        no = 1'b1;
        #1;

        // Compute y - x
        zx = 1'b0;
        nx = 1'b0;
        zy = 1'b0;
        ny = 1'b1;
        f =  1'b1;
        no = 1'b1;
        #1;

        // Compute x & y
        zx = 1'b0;
        nx = 1'b0;
        zy = 1'b0;
        ny = 1'b0;
        f =  1'b0;
        no = 1'b0;
        #1;

        // Compute x | y
        zx = 1'b0;
        nx = 1'b1;
        zy = 1'b0;
        ny = 1'b1;
        f =  1'b0;
        no = 1'b1;
        #1;
    end
endmodule