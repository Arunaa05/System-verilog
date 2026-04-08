module unpacked_array_tb;
  int arr_1d[4];
  initial
    begin
      arr_1d='{default:0};
      $display("arr_1d=%p",arr_1d);
      arr_1d='{0:5,3:6,default:0};
      $display("arr_1d=%p",arr_1d);
      arr_1d='{1,2,3,4};
      $display("arr_1d=%p",arr_1d);
      foreach(arr_1d[i])begin
        arr_1d[i]=i*3;
        $display("arr[%0d]=%0d",i,arr_1d[i]);
      end
    end
endmodule

/*output
arr_1d='{0, 0, 0, 0}
arr_1d='{5, 0, 0, 6}
arr_1d='{1, 2, 3, 4}
arr[0]=0
arr[1]=3
arr[2]=6
arr[3]=9*/

