module array_tb;
  bit [7:0] arr;
  initial
    begin
      arr = 8'h22;
      for(int i=0;i<$size(arr);i++)
        begin
              $display("arr[%0d]=%b",i,arr[i]);
        end
    end
endmodule

/*output
arr[0]=0
arr[1]=1
arr[2]=0
arr[3]=0
arr[4]=0
arr[5]=1
arr[6]=0
arr[7]=0*/
