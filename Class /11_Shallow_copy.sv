class Packet;
  int header_id;
  int payload;
endclass

module tb;
  initial begin
    Packet p1;
    Packet p2;

    p1 = new();
    p1.header_id = 12;
    p1.payload   = 256;
    $display("p1 data: ID=%0d, Payload=%0d", p1.header_id, p1.payload); 
    //Perform a Shallow Copy
    // This creates a brand new instance and copies p1's values into it
    p2 = new p1;
    $display("p2 data: ID=%0d, Payload=%0d", p2.header_id, p2.payload); 

    p2.payload = 512;
    $display("p1 payload = %0d", p1.payload); 
    $display("p2 payload = %0d", p2.payload); 
  end
endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

p1 data: ID=12, Payload=256
p2 data: ID=12, Payload=256
p1 payload = 256
p2 payload = 512

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
