module pass_by_value_task;

  task calc(input int a, input int b);
    int sum;
    sum = a + b;
    a = a + 10;
    b = b + 20;
    $display("Inside task:");
    $display("a = %0d, b = %0d, sum = %0d", a, b, sum);

  endtask
  
  int x = 5;
  int y = 7;
  initial begin
    $display("Before task:");
    $display("x = %0d, y = %0d", x, y);
    calc(x, y);
    $display("After task:");
    $display("x = %0d, y = %0d", x, y);

  end
endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
Before task:
x = 5, y = 7
Inside task:
a = 15, b = 27, sum = 12
After task:
x = 5, y = 7
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
