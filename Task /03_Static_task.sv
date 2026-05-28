module static_task;

  task counter_task;

    static int static_count = 0; 
    automatic int auto_count = 0;        

    static_count = static_count + 1;
    auto_count = auto_count + 1;

    $display("Static Count = %0d | Auto Count = %0d",
              static_count, auto_count);

  endtask

  initial begin
    counter_task();
    counter_task();
    counter_task();
  end

endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
Static Count = 1 | Auto Count = 1
Static Count = 2 | Auto Count = 1
Static Count = 3 | Auto Count = 1
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
