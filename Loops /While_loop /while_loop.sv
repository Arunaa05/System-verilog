module while_tb;
  int count[10];
  int i;
  initial 
     begin
       while(i<$size(count))
      begin
        count[i]=i*2;
        $display("count[%0d]=%0d",i,count[i]);
        i++;
      end
    end
endmodule

/*output
count[0]=0
count[1]=2
count[2]=4
count[3]=6
count[4]=8
count[5]=10
count[6]=12
count[7]=14
count[8]=16
count[9]=18*/
