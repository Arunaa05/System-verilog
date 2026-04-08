module foreach_2d_tb;
  int arr[4][2]='{'{1,5},'{2,6},'{3,7},'{8,9}};
  int i,j;
  initial 
    begin
      foreach(arr[i,j])
        begin
          $display("arr[%0d][%0d]=%0d",i,j,arr[i][j]);
        end
    end
endmodule

/*output
arr[0][0]=1
arr[0][1]=5
arr[1][0]=2
arr[1][1]=6
arr[2][0]=3
arr[2][1]=7
arr[3][0]=8
arr[3][1]=9*/
