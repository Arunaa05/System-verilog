module new_method;
  
  int data;
  mailbox mbx = new();

  initial
    begin
    
    mbx.put(10);
    mbx.get(data);
    
    $display("data=%0d",data);

    mbx.put(20);
    mbx.get(data);

    $display("data=%0d",data);
      
  end

endmodule


/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

data=10
data=20

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
