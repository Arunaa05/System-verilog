module automatic_task;

  task automatic count;

    static int static_count = 1;
    int auto_count = 1;         

    static_count = static_count * 2;
    auto_count   = auto_count *2 ;

    $display("Static Count = %0d | Auto Count = %0d",
              static_count, auto_count);

  endtask

  initial begin
    count();
    count();
    count();
  end

endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
Static Count = 2 | Auto Count = 2
Static Count = 4 | Auto Count = 2
Static Count = 8 | Auto Count = 2
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
