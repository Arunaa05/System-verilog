module dynamic_array_tb;
  int array[];
  int id[];
initial 
  begin
    array=new[5];
    array='{15,25,35,45,55};
    foreach(array[i])
      $display("array[%0d]=%0d",i,array[i]);
    $display("size of the array=%0d",array.size());
    id=array;
    $display("id=%p",id);
    id=new[id.size()+1](id);
    $display("id=%p",id);
    id[id.size()-1]=6;
     $display("id=%p",id);
    array=new[8](array);
    $display("size of the array after resizing=%0d",array.size());
    foreach(array[i])
      $display("array[%0d]=%0d",i,array[i]);
    array=new[5];
    $display("size of the array after overwriting=%0d",array.size());
    foreach(array[i])
      $display("array[%0d]=%0d",i,array[i]);
    array.delete();
    $display("size of the array after deleting=%0d",array.size());
    
  end
endmodule




/*output
array[0]=15
array[1]=25
array[2]=35
array[3]=45
array[4]=55
size of the array=5
id='{15, 25, 35, 45, 55}
id='{15, 25, 35, 45, 55, 0}
id='{15, 25, 35, 45, 55, 6}
size of the array after resizing=8
array[0]=15
array[1]=25
array[2]=35
array[3]=45
array[4]=55
array[5]=0
array[6]=0
array[7]=0
size of the array after overwriting=5
array[0]=0
array[1]=0
array[2]=0
array[3]=0
array[4]=0
size of the array after deleting=0*/
