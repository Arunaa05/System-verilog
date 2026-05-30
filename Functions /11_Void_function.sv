module void_function;

  int score_board[4] = '{90, 85, 70, 95};

  function automatic void clear_scores(ref int data_array[4]);
    
    for(int i = 0; i < 4; i++) begin
      data_array[i] = 0;
  endfunction

  initial begin
    $display("Before Clear: %p", score_board); 
    
    clear_scores(score_board); 
    
    $display("After Clear:  %p", score_board); 
  end

endmodule

/*output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

Before Clear: '{90, 85, 70, 95}
After Clear:  '{0, 0, 0, 0}

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/

