module and_gate( signals vif );

  assign vif.dut_MP.r=(vif.dut_MP.p)&(vif.dut_MP.q);

endmodule
