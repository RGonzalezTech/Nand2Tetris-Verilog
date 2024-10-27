`include "src/Week1/mux16_gate.v"
`include "src/Week1/not16_gate.v"
`include "src/Week1/and16_gate.v"
`include "src/Week2/add16_gate.v"
`include "src/Week1/or_gate.v"
`include "src/Week1/or_8way_gate.v"

`ifndef ALU_GATE_V
`define ALU_GATE_V
module alu_gate(
    output wire[15:0] out,
    output wire zr,
    output wire ng,
    input wire[15:0] x,
    input wire[15:0] y,
    input wire zx,
    input wire nx,
    input wire zy,
    input wire ny,
    input wire f,
    input wire no
);
    wire[15:0] x_or_zero, y_or_zero, x_not, y_not;
    wire[15:0] selectX, selectY;
    wire[15:0] x_plus_y, x_and_y;
    wire[15:0] result, result_not;
    wire[15:0] selectResult;

    // Using simpler syntax:
    // x_or_zero
    // assign x_or_zero = zx ? 16'b0 : x;
    // assign x_not = ~x_or_zero;
    // assign selectX = nx ? x_not : x_or_zero;

    // // y_or_zero
    // assign y_or_zero = zy ? 16'b0 : y;
    // assign y_not = ~y_or_zero;
    // assign selectY = ny ? y_not : y_or_zero;

    // assign x_plus_y = selectX + selectY;
    // assign x_and_y = selectX & selectY;
    // assign result = f ? x_plus_y : x_and_y;
    // assign result_not = no ? ~result : result;

    // assign out = result_not; // Final output

    // // Zero flag
    // assign zr = (out == 16'b0);
    // // Negative flag
    // assign ng = out[15];

    // Now using primative gates
    // Select X or Zero
    mux16_gate useX(
        .out(x_or_zero),
        .a(x),
        .b(16'b0),
        .sel(zx)
    );
    // Select Y or Zero
    mux16_gate useY(
        .out(y_or_zero),
        .a(y),
        .b(16'b0),
        .sel(zy)
    );

    // NOT the values, then...
    not16_gate notX(
        .out(x_not),
        .in(x_or_zero)
    );
    not16_gate notY(
        .out(y_not),
        .in(y_or_zero)
    );

    // Select between X and NOT X
    mux16_gate useXOrNot(
        .out(selectX),
        .a(x_or_zero),
        .b(x_not),
        .sel(nx)
    );
    // Select between Y and NOT Y
    mux16_gate useYOrNot(
        .out(selectY),
        .a(y_or_zero),
        .b(y_not),
        .sel(ny)
    );

    // ADD or AND
    add16_gate add(
        .out(x_plus_y),
        .a(selectX),
        .b(selectY)
    );
    and16_gate andCheck(
        .out(x_and_y),
        .a(selectX),
        .b(selectY)
    );

    // Select between ADD and AND
    mux16_gate useAddOrAnd(
        .out(result),
        .a(x_and_y),
        .b(x_plus_y),
        .sel(f)
    );
    not16_gate notResult(
        .out(result_not),
        .in(result)
    );

    // Select between result and NOT result
    mux16_gate useResultOrNot(
        .out(selectResult),
        .a(result),
        .b(result_not),
        .sel(no)
    );

    // Final output
    assign out = selectResult;

    // Zero flag, check for any 1s
    wire bottomHalf, topHalf, hasValue;
    or_8way_gate checkBottom(
        .out(bottomHalf),
        .in(selectResult[7:0])
    );
    or_8way_gate checkTop(
        .out(topHalf),
        .in(selectResult[15:8])
    );
    or_gate checkValue(
        .out(hasValue),
        .a(bottomHalf),
        .b(topHalf)
    );

    // If Has Value, then NOT Zero
    not_gate noValue(
        .out(zr),
        .in(hasValue)
    );

    // Negative flag
    assign ng = selectResult[15];
endmodule
`endif