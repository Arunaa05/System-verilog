class driver;
  virtual dff_if vif;
  
  function new(virtual dff_if vif);
    this.vif = vif;
  endfunction
  
  task main();
    repeat(20) begin
      @(posedge vif.clk);
      vif.d   <= $random;
      vif.rst <= 0;
      #1;
      $display("time= %0t [driver] rst=%0d d=%0d q=%0d", $time, vif.rst, vif.d,vif.q);
    end
  endtask
endclass
