module fork_join;
  event e1;
  int c = 10;
  int d;

  initial begin
    fork
      begin
        #5;
        c = 50;
        $display("[%0t]  c = %0d", $time, c);
        -> e1; 
      end

    
      begin
        $display("[%0t] Thread 2: Waiting for e1...", $time);
        wait(e1.triggered); // Correct usage of the .triggered property
        #1 d = c;          // Assign value of 'c' to 'd' after 1 time unit
        $display("[%0t] Thread 2: Event captured! d = %0d", $time, d);
      end
    join
  end 
endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

[0] Thread 2: Waiting for e1...
[5]  c = 50
[6] Thread 2: Event captured! d = 50

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
