module four_state_tb;
  logic data;
  reg [2:0]a;
  wire w;
  integer i;
  time t;
  real num;
  initial begin
    $display("Default value of logic:%b",data);
    $display("Default value of reg:%b",a);
    $display("Default value of wire:%b",w);
    $display("Default value of time:%t",t);
    $display("Default value of integer:%b",i);
    $display("Default value of real:%f",num);
    #1;
    a='bx11;
    $display("a=%b a=%d",a,a);
    num=05.05;
    $display("num=%f",num);
    $display("num=%0.2f",num);
  end
endmodule


//output
//Default value of logic:x
//Default value of reg:xxx
//Default value of wire:x
//Default value of time:0
//Default value of integer:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//Default value of real:0.000000
//a=x11  //prints binary exactly
//a=X   //decimal conversion → becomes unknown (x)
//num=5.050000  //default 6 decimal places
//num=5.05   //2 decimal places
  
