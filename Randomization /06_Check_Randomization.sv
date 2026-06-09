// Code your testbench here
// or browse Examples
class randomize;

  rand logic [3:0]a;
  
  constraint c1{a < 10;}
  constraint c2{a > 10;}

endclass

module tb;

  randomize r;
  initial begin

    r = new();

    if(r.randomize()) begin
      $display("\n Randomization successful");
      $display("a = %0d", r.a);
    end
    else begin
      $display("Randomization Failed");
      $display("a = %0d", r.a);
    end
  end
endmodule

/*output
xmsim: *W,SVRNDF (./testbench.sv,23|17): The randomize method call failed. The unique id of the failed randomize call is 0.
Observed simulation time : 0 FS + 0.

//These constraints and variables contribute to the set of conflicting constraints 

Randomization Failed
a = x

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
