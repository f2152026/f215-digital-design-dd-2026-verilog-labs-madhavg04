// FA_Gate.v
// Gate-level model of a 1-bit full adder.
// Final state after Task 1 parts (a)-(c):
//   (a) original order, no delay      -> see git history / lab notes
//   (b) gates reordered                -> order changed below, no functional change
//   (c) #(2) delay added to every gate -> waveform now shows propagation

module FA_Gate(
  input  a,
  input  b,
  input  cin,
  output sum,
  output cout
);
  wire ps, pc1, pc2;

  or  #(2) (cout, pc1, pc2);
  and #(2) (pc2, cin, ps);
  xor #(2) (sum, cin, ps);
  and #(2) (pc1, a,   b);
  xor #(2) (ps,  a,   b);


endmodule