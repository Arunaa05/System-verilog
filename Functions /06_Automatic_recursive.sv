module recursive_function;
  
  function int factorial_static(input int n);
    int temp;
    if(n <= 1)
      return 1;
    else
      temp= factorial_static(n-1);
   return n*temp;
  endfunction

  function automatic int factorial_automatic(input int n);
     
    int temp;
    if(n <= 1)
      return 1;
    else
      temp= factorial_automatic(n-1);
    return n*temp;
  endfunction

  initial begin
    $display("static function");
    $display("Factorial of 5 = %0d", factorial_static(5));
    
    $display("automatic function");
    $display("Factorial of 5 = %0d", factorial_automatic(5));
  end
endmodule

/*output 
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

static function
Factorial of 5 = 1

automatic function
Factorial of 5 = 120

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
