module tb;
  bit [7:0] data;
  initial 
    begin
      data=8'h45;
      for(int i=0;i<7;i++)begin
        $display("data[%od]=%b",i,data[i]);
      end
    end
endmodule

//output
//data[00000000000d]=1
//data[00000000001d]=0
//data[00000000002d]=1
//data[00000000003d]=0
//data[00000000004d]=0
//data[00000000005d]=0
//data[00000000006d]=1
