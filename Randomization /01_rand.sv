// Code your testbench here
// or browse Examples
class data;
  
  rand logic [3:0]a; 
  constraint c1 { a > 7; }
  
endclass
module rand_var;
  
data raf;
initial begin
 
  raf = new();
  $display ("rand - Randomizing the value of the variable in non-cycling form");

  for (int i = 0; i <= 10; i++) begin
    void'(raf.randomize()); 
    $display("Iteration = %0d, Random value of a = %0d", i, raf.a);
  end
end
endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

rand - Randomizing the value of the variable in non-cycling form
Iteration = 0, Random value of a = 10
Iteration = 1, Random value of a = 15
Iteration = 2, Random value of a = 14
Iteration = 3, Random value of a = 9
Iteration = 4, Random value of a = 8
Iteration = 5, Random value of a = 14
Iteration = 6, Random value of a = 13
Iteration = 7, Random value of a = 15
Iteration = 8, Random value of a = 14
Iteration = 9, Random value of a = 14
Iteration = 10, Random value of a = 8

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	25.03-s001: Exiting on Jun 09, 2026 at 00:01:01 EDT  (total: 00:00:02)
Done*/
