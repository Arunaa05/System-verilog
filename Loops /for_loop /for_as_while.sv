module for_as_while_tb;
  int count;
  initial 
     begin
       for(;;)
         begin
           $display("count=%0d",count);
           if(count==10)
              break;
              count++;
         end
     end   
endmodule


/*output
count=0
count=1
count=2
count=3
count=4
count=5
count=6
count=7
count=8
count=9
count=10*/
