module disable_join_any;

  initial begin
    $display("[%0t] Main Process Started", $time);

    fork
      begin
        #5 $display("[%0t] Task A Completed", $time);
      end

      begin
        #10 $display("[%0t] Task B Completed", $time);
      end

      begin
        #15 $display("[%0t] Task C Completed", $time);
      end
    join_any

    $display("[%0t] One process finished, disabling remaining processes", $time);

    disable fork;

    $display("[%0t] Main Process Ended", $time);
  end

endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

[0] Main Process Started
[5] Task A Completed
[5] One process finished, disabling remaining processes
[5] Main Process Ended

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
