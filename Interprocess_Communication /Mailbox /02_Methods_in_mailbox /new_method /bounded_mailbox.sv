module tb;

  mailbox mbx = new(2);

  initial begin
    mbx.put(10);
    mbx.put(20);

    $display("Mailbox is full now");

    mbx.put(30); // Blocks until an item is removed
  end

endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

Mailbox is full now

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
