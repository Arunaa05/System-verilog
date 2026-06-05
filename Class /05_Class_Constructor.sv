class transaction;
 
  bit [3:0]id;
  int addr;
  
  function new(bit [3:0]custom_id=4'd0,int custom_addr=0);
    id=custom_id;
    addr=custom_addr;
  endfunction
 
  
  function void display();
    $display("Transaction id:%0d  address: %0d",id,addr);
  endfunction
  
endclass


module tb_top;

  initial begin
   transaction t1,t2;
    t1=new();
    t1.display();
    
    t2=new(4'hf,423);
    t2.display();
    
  end
endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

Transaction id:0  address: 0
Transaction id:15  address: 423

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
  
