module foreach_3d_tb;
  int arr[2][4][2]='{'{'{1,5},'{2,6},'{3,7},'{4,8}},'{'{9,1},'{8,2},'{7,3},'{6,4}}};
  int i,j,k;
  initial 
    begin
      foreach(arr[i,j,k])
        begin
          $display("arr[%0d][%0d][%0d]=%0d",i,j,k,arr[i][j][k]);
        end
    end
endmodule

/*output
arr[0][0][0]=1
arr[0][0][1]=5
arr[0][1][0]=2
arr[0][1][1]=6
arr[0][2][0]=3
arr[0][2][1]=7
arr[0][3][0]=4
arr[0][3][1]=8
arr[1][0][0]=9
arr[1][0][1]=1
arr[1][1][0]=8
arr[1][1][1]=2
arr[1][2][0]=7
arr[1][2][1]=3
arr[1][3][0]=6
arr[1][3][1]=4*/
