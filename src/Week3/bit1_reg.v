`ifndef BIT1_REG_V
`define BIT1_REG_V

// Yes, I am aware that verilog provides built-in register functionality
// I am defining this as a learning exercise
module sr_latch(
    output wire out,
    input wire set,
    input wire reset
);
    wire nSet;
    wire nReset;

    // NOR gate S-R latch
    // This is combinational logic that
    //is used to store a single bit of data
    assign nSet = ~(set || nReset);
    assign nReset = ~(reset || nSet);

    assign out = nReset;
endmodule

module bit1_reg(
    output wire out,
    input wire val,
    input wire save
);
    wire latchSet;
    wire latchReset;

    // They should remain zero, UNLESS the save signal is high
    // In which case:
    // SET should be VAL and 
    // RESET should be not(VAL)

    assign latchSet = save ? val : 1'b0;
    assign latchReset = save ? ~val : 1'b0;

    sr_latch latchOut(
        .out(out),
        .set(latchSet),
        .reset(latchReset)
    );
endmodule
`endif