module arithmetic_op;
  int a=6;
  int b=4;
  
  initial begin
    
    $display("\n Arithmetic operators");
    
    $display("a+b = %0d",a+b);
    $display("a-b = %0d",a-b);
    $display("a*b = %0d",a*b);
    $display("a/b = %0d",a/b);
    $display("a modulus b = %0d",a%b);
    $display("a**b = %0d",a**b);
    
  end 
endmodule 

//output
=======Arithmetic operators=======
a+b = 10
a-b = 2
a*b = 24
a/b = 1
a modulus b = 2
a**b = 1296
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
