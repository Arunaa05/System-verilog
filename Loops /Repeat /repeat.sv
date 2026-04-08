module repeat_tb;
  int arr[4][4];
  int i,j;
  initial begin
    i=0;
    repeat($size(arr))
      begin
        j=0;
        repeat($size(arr[i]))
          begin
            arr[i][j]=i+j;
            $display("arr[%0d][%0d]=%0d",i,j,arr[i][j]);
           j++;
         end
         i++;
      end
   
  end
endmodule
