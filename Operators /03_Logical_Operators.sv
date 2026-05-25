// Code your testbench here
// or browse Examples
module operators;
  logic[3:0] a,b;
  reg signed [3:0]c;
  initial begin
    a='b1101;
    b='b0101;
    $display("value of a = %b(%0d) value of b = %b(%0d)",a,a,b,b);
    
    $display("Logical operator");
    
    $display("a||b = %b | a&&b = %b | !a = %b",a||b ,a&&b, !a);
    
    
    $display("a||b = %b | a&&b = %b | !a = %b",a||b ,a&&b, !a);

    $display("a|b = %b | a&b = %b | ~a = %b",a|b ,a&b, ~a);

    $display("^a = %b | ^b = %b | a^b = %b",^a ,^b, a^b);

    $display("|a = %b | &a = %b | ^a = %b",|a ,&a, ^a);
  end
endmodule

//output
value of a = 1101 value of b = 0101
Logical operator
a||b = 1 | a&&b = 1 | !a = 0
a||b = 1 | a&&b = 1 | !a = 0
a|b = 1101 | a&b = 0101 | ~a = 0010
^a = 1 | ^b = 0 | a^b = 1000
|a = 1 | &a = 0 | ^a = 1
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
