module halfAdder (
  output wire c, s,
  input wire x, y
);

  assign s = x ^ y;
  assign c = x & y;

endmodule
