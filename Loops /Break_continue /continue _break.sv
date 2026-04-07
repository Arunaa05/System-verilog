 module tb;
   initial 
    begin
      for(int i=0;i<10;i++)
        begin
          if(i==2)
            continue;
          if(i==7)
            break;
          $display("i[%0d]",i);
        end
    end
endmodule

output
/*i[0]
i[1]
i[3]
i[4]
i[5]
i[6]*/
