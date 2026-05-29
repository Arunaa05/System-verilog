// Code your testbench here
// or browse Examples
module static_function;
  
  function int add(input int a,b);
    
    $display("Entered Function");
    $display("a=%0d b=%0d",a,b);
    return a|b;
    
  endfunction
  int sum;
  
  initial begin
    $display("Function called");
    sum=add(2,5);
    $display("add=%0d",sum);
  end
endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

Function called
Entered Function
a=2 b=5
add=7

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
