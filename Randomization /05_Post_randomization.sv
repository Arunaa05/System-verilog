// Code your testbench here
// or browse Examples
class post_randomization;

  rand logic [3:0]a;
  bit parity;
  int max;
  bit cons_en;

  constraint c1{a < max;}

  function void pre_randomize();

    $display("\nPre Randomize()");
    max = 10;
    $display("max_value = %0d", max);

    if(cons_en) begin
      $display("Constraint Enabled");
      c1.constraint_mode(1);
    end

    else begin
      $display("Constraint Disabled");
      c1.constraint_mode(0);

    end


  endfunction


  function void post_randomize();

    $display("Post Randomize()");
    parity = ^a;
    $display("Generated parity = %0b data = %b",
              parity,a);

  endfunction

endclass


module tb;

  post_randomization r;

  initial begin
    r = new();
    r.cons_en = 1;
    if(r.randomize())
      $display("a = %0d", r.a);
    else
      $display("Randomization Failed");



    r.cons_en = 0;
    if(r.randomize())
      $display("a = %0d", r.a);
    else
      $display("Randomization Failed");


    r.a = 4'b0010;
    r.cons_en = 1;
    if(r.randomize())
      $display("a = %0d", r.a);
    else
      $display("Randomization Failed");

  end
endmodule

/*xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run

Pre Randomize()
max_value = 10
Constraint Enabled
Post Randomize()
Generated parity = 0 data = 0000
a = 0

Pre Randomize()
max_value = 10
Constraint Disabled
Post Randomize()
Generated parity = 1 data = 1000
a = 8

Pre Randomize()
max_value = 10
Constraint Enabled
Post Randomize()
Generated parity = 0 data = 0101
a = 5

xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
