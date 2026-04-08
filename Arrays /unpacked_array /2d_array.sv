module unpacked_array_tb;
  byte arr_2d[2][2];
  int i,j;
  initial
    begin
      arr_2d='{'{1,5},'{2,6}};
      $display("arr_2d=%p",arr_2d);
      $urandom(32'd12345);
      foreach(arr_2d[i,j])begin
        arr_2d[i][j]=$urandom();
        $display("arr_2d[%0d][%0d]=%0d",i,j,arr_2d[i][j]);
      end
    end
endmodule


/*output
arr_2d='{'{'h1, 'h5}, '{'h2, 'h6}}
arr_2d[0][0]=52
arr_2d[0][1]=-66
arr_2d[1][0]=-23
arr_2d[1][1]=6*/
