//An object handle is nothing but a pointer for an object.

class Packet;
	int count;
endclass

module tb;
  	
	Packet pkt,pkt1;
  initial begin
      pkt = new();
      pkt.count=4'hf;
    $display ("count=%0d",pkt.count);
    pkt1=pkt;
    $display ("count = %0d", pkt1.count);
  	end
endmodule

/* output 
xcelium> run
count=15
count = 15
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
*/
