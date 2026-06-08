class packet;
  bit [31:0] data;
  local int id;
  
  function new();
     data = 55;
     id = 6;
  endfunction
    

  function void display();
    $display("data = %0d and id = %0d", data, id);
  endfunction
endclass

module local_variable;
  packet pkt;
  
  initial begin
    
    pkt = new();
    //pkt.data = 55;
    //pkt.id = 6;
    // It is tried to access outside of class scope, which leads to a compilation error.
    pkt.display();
    
  end
endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

data = 55 and id = 6

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
