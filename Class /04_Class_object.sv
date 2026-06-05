//In simple way if we create an object then we assign a memory for that handle of the class.

class Packet;
 
  bit [7:0] header;
  int       payload_data;
  
  function void print();
    $display("PACKET Header:%0h  Payload Data: %0d", header, payload_data);
  endfunction
  
endclass

module tb_top;
  initial begin
    
    Packet pkt; 
    pkt = new(); 
    pkt.header= 8'hA5;
    pkt.payload_data= 1024;
    pkt.print();
    
  end
endmodule

/*output 
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

PACKET Header:a5  Payload Data: 1024

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
  
