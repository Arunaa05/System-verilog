module array_locator;
  int array[10]='{3,7,1,8,3,6,9,2,5,2};
  int arr[$];
  initial
    begin
      arr=array.find(x) with (x>5);
      $display("arr=%p",arr);
      arr=array.find_index with (item==3);
      $display("ar%p",arr);
      arr=array.find_first(x) with (x<6 & x>=2); //{'3',3,2,5,2}
       $display("ar%p",arr);
      arr=array.find_first_index(x) with (x>7); //{'8',9} index[3]=8
       $display("ar%p",arr);
      arr=array.find_last(x) with (x>=3 & x<9); //{3,7,8,3,6,'5'}
       $display("ar%p",arr);
      arr=array.find_last_index(x) with (x>4); //{7,8,6,9,'5'} index[8]=5
       $display("ar%p",arr);
    end
endmodule

/*output
arr='{7, 8, 6, 9}
ar'{0, 4}
ar'{3}
ar'{3}
ar'{5}
ar'{8}*/
