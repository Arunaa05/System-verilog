// Code your testbench here
// or browse Examples
class packet;
  int data=55;
endclass

module tb;
  initial begin
    packet p1,p2;
    p1=new();
    p1.data=25;
    $display("p1.data=%0d",p1.data);
    //class assignment
    p2=p1;
    p2.data=15;
    $display("p1.data=%0d",p1.data);
    $display("p2.data=%0d",p2.data);
  end
endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

p1.data=25
p1.data=15
p2.data=15

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
*/
