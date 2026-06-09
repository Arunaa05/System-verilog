// Code your testbench here
// or browse Examples
class Randc;
  rand logic [2:0]a;
  randc logic [2:0]b;
  constraint c1 { a>0; b>0; }
endclass

module tb;
Randc r;
initial begin
 
  r= new();
  $display ("randc - Randomizing the value of the variable in cyclic form");
  repeat(10)begin
  
    if(r.randomize)
      $display("a=%d b=%d",r.a,r.b);
    else
      $display("Randmization failed");
  end
end
endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

randc - Randomizing the value of the variable in cyclic form
a=1 b=5
a=1 b=6
a=6 b=3
a=6 b=1
a=5 b=4
a=7 b=7
a=3 b=2
a=7 b=2
a=1 b=1
a=1 b=4

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	25.03-s001: Exiting on Jun 09, 2026 at 00:11:30 EDT  (total: 00:00:01)
Done*/
