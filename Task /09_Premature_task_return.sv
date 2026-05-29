module task_return;

  int result;
  
  task check_num(input int a);

    if(a < 0) begin
      $display("Task: Negative number detected");
      return;
    end
    $display("Task: Number = %0d", a);

  endtask
  initial begin
    check_num(-5);
    $display("");
    check_num(10);
  end

endmodule

/*output 
Task: Negative number detected

Task: Number = 10
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
