// Code your testbench here
// or browse Examples
module operators;
  logic[3:0] a,b;
  reg signed [3:0]c;
  initial begin
    a='b1101;
    b='b0101;
    $display("value of a = %b(%0d) value of b = %b(%0d)",a,a,b,b);
    
    $display("Equality operator");
    c= 'b1xx1;
    $display("a!=b = %b | a==c = %b | 'b1xx1===c = %b",a==b,a!=c,'b1xx1===c);
    
    $display("a==b = %b | a!=b = %b | a==c = %b", a==b, a!=b, a==c);
    
    $display("a===b = %b | a!==b = %b | b==c = %b", a===b, a!==b, b==c);
    
    $display("a > b = %b | a < c = %b | a >= c = %b", a>b, a<c, a>=c);
    
    $display("'b1xx1===c = %b | 'b1xx1!==c = %b | a==c = %b",
         'b1xx1===c, 'b1xx1!==c, a==c);
  end
endmodule

//output
value of a = 1101(13) value of b = 0101(5)
Equality operator
a!=b = 0 | a==c = x | 'b1xx1===c = 1
a==b = 0 | a!=b = 1 | a==c = x
a===b = 0 | a!==b = 1 | b==c = 0
a > b = 1 | a < c = x | a >= c = x
'b1xx1===c = 1 | 'b1xx1!==c = 0 | a==c = x
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
