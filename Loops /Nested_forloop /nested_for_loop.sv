module nested_for_tb;
  int arr[2][3];
  int i,j;
  initial
    begin
      for(i=0;i<$size(arr);i++)
        begin
          for(j=0;j<$size(arr[i]);j++)
            begin
              arr[i][j]=i*j;
              $display("arr[%0d][%0d]=%0d",i,j,arr[i][j]);
            end
        end
    end
endmodule


/*output
arr[0][0]=0
arr[0][1]=0
arr[0][2]=0
arr[1][0]=0
arr[1][1]=1
arr[1][2]=2*/
