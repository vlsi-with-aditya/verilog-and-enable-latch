module tb_and_latch;


  reg a,  b,  en;
  wire  y; 

 
  and_latch DUT (.a(a), .b(b),  .en(en), .y(y));


   initial begin 
          a=0; b=0; en=0;
          #10 a=1; b=1; en=0;
          #10 a=0; b=1; en=0;
          #10 a=1; b=0;
          #10 en= 1 ;
          #10 $finish;
  end 
     
     initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb_and_latch);
end

  endmodule 
