module and_latch(
    input a,
    input b,
    input en,
    output reg y
);

always @(*) begin
    if(en)
        y = a & b;   // latch behaviour
end

endmodule
