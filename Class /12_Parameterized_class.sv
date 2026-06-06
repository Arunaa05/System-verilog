// Code your testbench here
// or browse Examples
class packet #(parameter int WIDTH=8);
  bit [WIDTH-1:0]data; 
   
  function void display();
    $display("packet WIDTH: %d data=%0h",WIDTH,data);
  endfunction
  
endclass

module tb;
  initial begin 
    packet #(8) pkt1;
    packet #(16) pkt2;
    
    pkt1 = new();
    pkt2 = new();
    
    pkt1.data=8'hA;
    pkt2.data=16'hffff;
    
    pkt1.display();
    pkt2.display();
  end
endmodule

/*output 
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

packet WIDTH:           8 data=a
packet WIDTH:          16 data=ffff

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
