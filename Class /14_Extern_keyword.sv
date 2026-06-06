class Packet;
  int packet_id;
  bit [7:0] payload;

  extern function void configure(int id, bit [7:0] data);
  extern function void display();
endclass


function void Packet::configure(int id, bit [7:0] data);
  this.packet_id = id;
  this.payload   = data;
  
endfunction

function void Packet::display();
  $display("Packet ID: %0d, Payload: %h", packet_id, payload);
endfunction


module tb;
  initial begin
    Packet p = new();
    p.configure(1, 8'hA5);
    p.display();
  end
endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

Packet ID: 1, Payload: a5

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
