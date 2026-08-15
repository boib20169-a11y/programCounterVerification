import uvm_pkg::*;
import counter_pkg::*;

module testbench;

   counter_if ctr_if();
   programCounter DUT (
    .d   (ctr_if.data_in),
    .clk (ctr_if.clk),
    .ld  (ctr_if.ld),
    .clr (ctr_if.clr),
    .inc (ctr_if.inc),
    .q   (ctr_if.q)
    );

   initial begin
      string test_name;

      // Please copy ctr_if to the global virtual interface variable 
      // you created in counter_pkg.sv.

      counter_pkg::global_ctr_if = ctr_if;
	  uvm_config_db#(int)::set(null, "uvm_test_top.env.drv", "nloops", 100); 
      run_test();
      
   end   
      
endmodule // top
