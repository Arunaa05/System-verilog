module foreach_1d_tb;
  int arr[5]='{2,7,4,9,1};
  int i;
  initial 
    begin
      foreach(arr[i])
        begin
          $display("arr[%0d]=%0d",i,arr[i]);
        end
    end
endmodule

/*output
arr[0]=2
arr[1]=7
arr[2]=4
arr[3]=9
arr[4]=1*/
