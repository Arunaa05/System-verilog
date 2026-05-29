module function_return;

  int result;
  function int divide(input int a, b);

    if(b == 0) begin
      $display("Function: Division by zero");
      return -1;
    end

    return a / b;

  endfunction

  initial begin
    result = divide(20, 5);
    $display("Function Result = %0d\n", result);

    result = divide(20, 0);
    $display("Function Result = %0d\n", result);
  end

endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

Function Result = 4
Function: Division by zero
Function Result = -1

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
