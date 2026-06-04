module tb(signals vif);
  initial begin
    $display("and gate output using modports\n");
    repeat(10) begin
      vif.tb_MP.p = $random;
      #1;
      vif.tb_MP.q = $random;
      #1;
      $display("input_p=%b\t input_q=%b\t output_r=%b",vif.tb_MP.p,vif.tb_MP.q,vif.tb_MP.r);
    end
  end
endmodule : tb
