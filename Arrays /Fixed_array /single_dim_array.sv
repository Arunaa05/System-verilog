module tb;
  int arr[5] = '{10, 20, 30, 40, 50};
  initial
    begin
    foreach (arr[i]) 
      begin
      $display("arr[%0d]=%0d",i,arr[i]);
    end
  end
endmodule

/*output
arr[0] = 10
arr[1] = 20
arr[2] = 30
arr[3] = 40
arr[4] = 50*/
