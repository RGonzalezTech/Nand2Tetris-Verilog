`include "src/Week3/bit1_reg.v"

module bit1_reg_tb();
    reg val;
    reg save;
    wire out;

    bit1_reg this_reg(
        .out(out),
        .val(val),
        .save(save)
    );

    `define SHOW $display("|  %b  |   %b   |  %b  |", val, save, out)
    initial begin
        $display("| val | save  | out |");
        val = 0; save = 0;
        #1 `SHOW;

        val = 1; save = 0;
        #1 `SHOW;

        val = 1; save = 1;
        #1 `SHOW;

        val = 0; save = 0;
        #1 `SHOW;
        #1 `SHOW;
        #1 `SHOW;

        val = 0; save = 1;
        #1 `SHOW;

        val = 1; save = 0;
        #1 `SHOW;

        val = 0; save = 0;
        #1 `SHOW;

        val = 1; save = 1;
        #1 `SHOW;
        val = 0; save = 0;
        #1 `SHOW;
        #1 `SHOW;
    end
endmodule