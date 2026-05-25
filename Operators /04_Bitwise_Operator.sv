// Code your testbench here
// or browse Examples
module bitwise;
  logic[7:0]a,b;
  logic[7:0] r_and;
  logic[7:0] r_or;
  logic[7:0] r_not;
  logic[7:0] r_nor;
  logic[7:0] r_xnor;
  logic[7:0] r_xor;
  logic[7:0] r_nand;
  
  always_comb begin
      r_and = a&b;
      r_or = a|b;
      r_not = ~a;
      r_nor = ~(a|b);
      r_xnor = ~(a^b);
      r_xor = a^b;
      r_nand  = ~(a&b);
    end 
  initial begin
      a = 8'b10001000;
      b = 8'b11011111;
      #5;
      $display("AND = %b", r_and);
      $display("OR = %b", r_or);
      $display("NOT = %b", r_not);
      $display("NOR = %b", r_nor);
      $display("XNOR = %b", r_xnor);
      $display("XOR = %b", r_xor);
      $display("NAND = %b", r_nand);
    end 
endmodule 

//output
AND = 10001000
OR = 11011111
NOT = 01110111
NOR = 00100000
XNOR = 10101000
XOR = 01010111
NAND = 01110111
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
      
      
