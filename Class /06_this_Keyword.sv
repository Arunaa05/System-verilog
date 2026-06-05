class Driver;
  int addr; 

  function new(int addr); 
    this.addr = addr; 
    
  endfunction
  
  function void print_addr();
    $display("Address = %0d", this.addr);
  endfunction
endclass

module tb;
  initial begin
    Driver drv = new(1024); 
    drv.print_addr();       
  end
endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

Address = 1024

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
