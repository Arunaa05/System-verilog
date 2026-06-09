// Code your testbench here
// or browse Examples 
class random;  
  rand bit [2:0] x;  
  constraint cons { x == 5; }  
endclass  

module randomization();  

  random r = new();  

  initial begin  
    if (r.randomize())  
      $display("\tx: %0d \tRandomization successful", r.x);  
    else  
      $display("\tx: %0d \tRandomization Failed", r.x);  

    // Here, we are forcing value to be 2 instead of 5  
    if (r.randomize() with { x == 2; })  
      $display("\tvalue: %0d \tRandomization successful",r.x);  
    else  
      $display("\tvalue: %0d \tRandomization Failed", r.x);  
  end  

endmodule  

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

	x: 5 	Randomization successful
  
xmsim: *W,SVRNDF (./testbench.sv,17|18): The randomize method call failed. The unique id of the failed randomize call is 1.
Observed simulation time : 0 FS + 0.

	value: 5 	Randomization Failed
  
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
