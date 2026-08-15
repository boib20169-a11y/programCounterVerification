interface counter_if ;

  // Port List
  
   logic [31:0] data_in;
   logic [31:0] q;
   logic       clk;
   logic       inc;
   logic       ld;
   logic       clr;

  // Monitor Modport
   
   modport cntr_mp (
                   input data_in,
                   input  clk,
                   input  ld,
                   input  clr,
                   input  inc,
                   output  q
                   );

   initial begin : clock_gen
      clk = 0;
      forever #10 clk = ~clk;
   end
   
   initial begin : reset_dut
      clr = 0;
      @(posedge clk);
      @(negedge clk);
      clr = 1;
   end

      
endinterface : counter_if