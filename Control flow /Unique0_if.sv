module unique0_if;
  int a=10,b=20;
  initial
    begin
      $display("Unique0 if with one condition true");
      unique0 if(a<30)
        $display("condition 1");
      else if(a==b)
        $display("condition 2");
      else if(a>b)
        $display("condition 3");
      else
        $display("else condition");
    end
endmodule

/*output
Unique0 if with one condition true
condition 1*/

module unique0_if;
  int a=10,b=20;
  initial
    begin
      $display("Unique0 if with multiple condition true");
      unique0 if(a<30)
        $display("condition 1");
      else if(a!=b)
        $display("condition 2");
      else if(a>b)
        $display("condition 3");
      else
        $display("else condition");
    end
endmodule

/*output
Unique0 if with multiple condition true
condition 1
xmsim: *W,MCONDE: Unique0 if violation:  Multiple true if clauses at {line=8:pos=15 and line=10:pos=12}.*/

module unique0_if;
  int a=10,b=20;
  initial
    begin
      $display("Unique0 if with no else/true part");
      unique0 if(a>30)
        $display("condition 1");
      else if(a==b)
        $display("condition 2");
      else if(a>b)
        $display("condition 3");
     
    end
endmodule 
/*output
Unique0 if with no else/true part
xmsim: *W,RNQUIE: Simulation is complete.*/
