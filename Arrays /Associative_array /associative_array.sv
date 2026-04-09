module associative_tb;
  bit [7:0]array[int];
  int index;
  initial 
    begin
      array[6]=9;
      array[4]=12;
      array[15]=1;
      array[7]=3;
      array[2]=8;
      array[5]=23;
      foreach(array[i])
         begin
           $display("array[%0d]=%0d",i,array[i]);
         end
      $display("size of the array=%0d",array.size());
      $display("num =%0d",array.num());
      if(array.exists(15))
        $display("element exist at index = 15");
      else
        $display("no element exist at index = 15");
      if(array.exists(3))
        $display("element exist at index = 3");
      else
        $display("no element exist at index = 3");
      array.first(index);
        $display("first index of the array = %0d",index);
      array.last(index);
      $display("last index of the array = %0d",index);
      index=7;
      array.prev(index);
      $display("previous index of 7 is %0d",index);
      index=2;
      array.next(index);
      $display("next index of 2 is %0d",index);
      array.delete(6);
      $display("delete the index=6",index);
      foreach(array[i])
        begin
          $display("array[%0d]=%0d",i,array[i]);
        end
      array.delete();
      $display("size of the array=%0d",array.size());
     end
endmodule


/*output
array[2]=8
array[4]=12
array[5]=23
array[6]=9
array[7]=3
array[15]=1
size of the array=6
num =6
element exist at index = 15
no element exist at index = 3
first index of the array = 2
last index of the array = 15
previous index of 7 is 6
next index of 2 is 4
delete the index=6          4
array[2]=8
array[4]=12
array[5]=23
array[7]=3
array[15]=1
size of the array=0*/
