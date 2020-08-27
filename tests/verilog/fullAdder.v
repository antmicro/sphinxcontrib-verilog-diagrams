`include "halfAdder.v"

module fullAdder (
  output wire cout, s,
  input wire cin, x, y
);
  wire c1, c2, s1;

  halfAdder h1(c1, s1, x, y);
  halfAdder h2(c2, s, cin, s1);

  assign cout = c1 | c2;

endmodule
