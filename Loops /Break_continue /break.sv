module tb;
  int count=0;
  initial 
    begin
      for(int i=0;i<7;i++)
        begin
          $display("count[%0d]",count);
          count++;
          if(i==4)
            break;
        end
    end
endmodule
