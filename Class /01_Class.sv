//A class is a user-defined data type that includes data (class properties), functions and tasks that operate on data

class add;
  int a, b;
  function int ADD(); // functions or task are called as class methods
    ADD=a+b;
  endfunction
  
endclass

module demo;
  
  initial begin
  add c = new();
  c.a = 5;
  c.b =5;
    $display("ADD = %0d",c.ADD());
  end
  
endmodule

/* output
xcelium> run
ADD = 10
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit */
