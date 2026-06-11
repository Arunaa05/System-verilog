module mailbox_example;

  mailbox mbx;

  initial begin
    mbx = new();
    fork
      producer();
      consumer();
    join
  end

  task producer();
    int data;

    for (int i = 1; i <= 5; i++) begin
      data = i * 10;
      mbx.put(data);
      $display("[%0t] Producer Put : %0d", $time, data);
      #5;
    end
  endtask

  task consumer();
    int data;

    for (int i = 1; i <= 5; i++) begin
      mbx.get(data);
      $display("[%0t] Consumer Got : %0d", $time, data);
      #8;
    end
  endtask

endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

[0] Producer Put : 10
[0] Consumer Got : 10
[5] Producer Put : 20
[8] Consumer Got : 20
[10] Producer Put : 30
[15] Producer Put : 40
[16] Consumer Got : 30
[20] Producer Put : 50
[24] Consumer Got : 40
[32] Consumer Got : 50

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
