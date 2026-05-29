module simple_function;
  int calc;
 
  function int sub(input int a, b);
    
    return a-b;
    
  endfunction
  
  initial begin
    calc = sub(20,10);
    $display("Subtraction calc=%0d", calc); 
  end
  
endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
Subtraction calc=10
xmsim: *W,RNQUIE: Simulation is complete.*/
