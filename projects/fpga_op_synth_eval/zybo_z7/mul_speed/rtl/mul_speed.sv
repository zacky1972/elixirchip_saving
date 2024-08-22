


`timescale 1ns / 1ps
`default_nettype none

`ifndef A_WIDTH
`define A_WIDTH 8
`endif

`ifndef B_WIDTH
`define B_WIDTH 8
`endif

// 乗算テスト
module mul_speed
        #(
            parameter   int     A_BITS = `A_WIDTH,
            parameter   type    a_t    = logic unsigned [A_BITS-1:0],
            parameter   int     B_BITS = `B_WIDTH,
            parameter   type    b_t    = logic unsigned [B_BITS-1:0],
            parameter   int     C_BITS = A_BITS + B_BITS,
            parameter   type    c_t    = logic unsigned [C_BITS-1:0]
        )
        (
            input   var logic           reset,
            input   var logic           clk,
            input   var logic           cke,

            input   var logic   [0:0]   a,
            input   var logic   [0:0]   b,
            output  var logic   [0:0]   c
        );

    // シフトレジスタを作ってI/O数を減らす
    (* DONT_TOUCH = "yes" *)    a_t     as;
    (* DONT_TOUCH = "yes" *)    b_t     bs;
    always_ff @( posedge clk ) begin
        as <= a_t'({as, a});
        bs <= b_t'({bs, b});
    end

    // 乗算前後のリタイミングを禁止(FF間の演算に制約する)
    (* DONT_TOUCH = "yes" *)    a_t     a0;
    (* DONT_TOUCH = "yes" *)    b_t     b0;
    (* DONT_TOUCH = "yes" *)    c_t     c0;
    always_ff @( posedge clk ) begin
        if ( reset ) begin
            a0 <= 0;
            b0 <= 0;
            c0 <= 0;
        end
        else if ( cke ) begin
            a0 <= as;
            b0 <= bs;
            c0 <= a0 * b0;
        end
    end

    assign c = ^c0;

endmodule


`default_nettype wire