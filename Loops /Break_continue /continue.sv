module continue_tb;
  initial 
    begin
      for(int i=0;i<7;i++)
        begin
          if(i==5)
            continue;
          $display("i[%0d]",i);
        end
    end
endmodule

output
/*i[0]
i[1]
i[2]
i[3]
i[4]
i[6]*/
