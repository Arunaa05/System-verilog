module tb;
  int i;
  typedef enum{mon,tues,wed,thurs,fri,sat,sun}day;
  initial begin
    day month;
    for (i=0;i<7;i++)
     begin
       month=day'(i);
       $display("day=%0d %0s",month,month.name());
     end
  end
endmodule
