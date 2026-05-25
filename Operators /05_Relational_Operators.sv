// Code your testbench here
// or browse Examples
module relational;
  logic [3:0]a,b;
  initial begin
    a='d13;
    b='d5;
    $display("value of a = %b(%0d) value of b = %b(%0d)",a,a,b,b);
    
    $display("Relational operators");
    
    $display("a>b = %0d a<b = %0d a>=b =%0d",a>b,a<b,a>=b);

    $display("a<=b = %0d a>b = %0d a<b = %0d", a<=b, a>b, a<b);

    $display("b>a = %0d b<a = %0d b>=a = %0d", b>a, b<a, b>=a);  

    $display("a<=b = %0d",a<=b);
  end
endmodule

//output
value of a = 1101(13) value of b = 0101(5)
Relational operators
a>b = 1 a<b = 0 a>=b =1
a<=b = 0 a>b = 1 a<b = 0
b>a = 0 b<a = 1 b>=a = 0
a<=b = 0
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
