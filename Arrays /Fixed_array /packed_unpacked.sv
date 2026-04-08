module array_tb;
  bit [4:0] array[2:0][1:0] = '{'{5'h5, 5'h1},
                                '{5'h10, 5'h2},
                                '{5'h15, 5'h3}
                               };
  initial 
    begin
    foreach (array[i,j]) 
      begin
      $display("array[%0h][%0h] = %0h", i, j, array[i][j]);
    end
  end
endmodule

/*output
array[2][1] = 5
array[2][0] = 1
array[1][1] = 10
array[1][0] = 2
array[0][1] = 15
array[0][0] = 3*/
