module tb;

  mailbox mbx = new();
  int data;

  initial begin
    fork
      begin
        #10;
        mbx.put(55);
        $display("time=%0t Producer put %0d", $time,55);
        #15
        mbx.put(5);
        $display("time=%0t Producer put %0d", $time,5);
      end

      begin
        $display("time=%0t Consumer waiting", $time);
        mbx.get(data);
        $display("time=%0t Consumer got %0d", $time, data);
        mbx.get(data);
        $display("time=%0t Consumer got %0d", $time, data);
      end
    join
  end

endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

time=0 Consumer waiting
time=10 Producer put 55
time=10 Consumer got 55
time=25 Producer put 5
time=25 Consumer got 5

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
