module do_while_tb;
  int count[10];
  int i;
  initial 
     begin
      do 
      begin
        count[i]=i*i;
        $display("count[%0d]=%0d",i,count[i]);
        i++;
      end
      while(i<$size(count));
    end
endmodule


/*output
count[0]=0
count[1]=1
count[2]=4
count[3]=9
count[4]=16
count[5]=25
count[6]=36
count[7]=49
count[8]=64
count[9]=81*/
