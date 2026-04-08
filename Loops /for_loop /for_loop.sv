module for_tb;
  int array[5];
  int count;
  initial 
     begin
       for(count=0;count<$size(array);count++)
         begin
           $display("count=%0d",count);
         end
       for(int i=0;i<$size(array);i++)
         begin
           array[i]=i+2;
           $display("array[%0d]=%0d",i,array[i]);
         end
     end
endmodule



/*output
count=0
count=1
count=2
count=3
count=4
array[0]=2
array[1]=3
array[2]=4
array[3]=5
array[4]=6*/
