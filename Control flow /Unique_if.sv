module unique_if;
  int a=10,b=20;
  initial
    begin
      $display("Unique if with one condition true");
      unique if(a<b)
        $display("condition 1");
      else if(a==b)
        $display("condition 2");
      else if(a==0)
        $display("condition 3");
      else
        $display("else condition");
    end
endmodule
/*output
Unique if with one condition true
condition 1*/

module unique_if;
  int a=10,b=20;
  initial
    begin
      $display("Unique if with multiple condition true");
      unique if(a<15)
        $display("condition 1");
      else if(a!=b)
        $display("condition 2");
      else if(a<b)
        $display("condition 3");
      else
        $display("else condition");
    end
endmodule
/*output
Unique if with one condition true
condition 1
xmsim: *W,MCONDE: Unique if violation:  Multiple true if clauses at {line=8:pos=14 and line=10:pos=12}.*/

module unique_if;
  int a=10,b=20;
  initial
    begin
      $display("Unique if with no true/else part");
      unique if(a>15)
        $display("condition 1");
      else if(a==b)
        $display("condition 2");
      else if(a>b)
        $display("condition 3");
    end
endmodule
/*output
Unique if with no true/else part
xmsim: *W,NOCOND: Unique if violation:  Every if clause was false.*/
