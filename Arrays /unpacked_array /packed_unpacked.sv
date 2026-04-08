module tb;
logic [7:0]arr_a[3];
logic [7:0]arr_b[2:0][3];
logic [7:0]arr_c[2:0][3:0][2];
initial 
  begin
    foreach(arr_a[i])begin
      arr_a[i]=i*2;
      $display("arr_a[%0d]=%0d",i,arr_a[i]);
    end
    foreach(arr_b[i,j])begin
      arr_b[i][j]=j+12;
      $display("arr_b[%0d]=%0d",i,j,arr_b[i][j]);
    end
    foreach(arr_c[i,j,k])begin
      arr_c[i][j][k]=k*k;
      $display("arr_c[%0d]=%0d",i,j,k,arr_c[i][j][k]);
    end
    $display("size of dim 3 in arr_c = %0d",$size(arr_c,3)); 
    $display("dimension of arr_c = %0d",$dimensions(arr_c));
  end
endmodule


/*output
arr_a[0]=0
arr_a[1]=2
arr_a[2]=4
arr_b[2]=0 12
arr_b[2]=1 13
arr_b[2]=2 14
arr_b[1]=0 12
arr_b[1]=1 13
arr_b[1]=2 14
arr_b[0]=0 12
arr_b[0]=1 13
arr_b[0]=2 14
arr_c[2]=3          0  0
arr_c[2]=3          1  1
arr_c[2]=2          0  0
arr_c[2]=2          1  1
arr_c[2]=1          0  0
arr_c[2]=1          1  1
arr_c[2]=0          0  0
arr_c[2]=0          1  1
arr_c[1]=3          0  0
arr_c[1]=3          1  1
arr_c[1]=2          0  0
arr_c[1]=2          1  1
arr_c[1]=1          0  0
arr_c[1]=1          1  1
arr_c[1]=0          0  0
arr_c[1]=0          1  1
arr_c[0]=3          0  0
arr_c[0]=3          1  1
arr_c[0]=2          0  0
arr_c[0]=2          1  1
arr_c[0]=1          0  0
arr_c[0]=1          1  1
arr_c[0]=0          0  0
arr_c[0]=0          1  1
size of dim 3 in arr_c = 2
dimension of arr_c = 4*/
