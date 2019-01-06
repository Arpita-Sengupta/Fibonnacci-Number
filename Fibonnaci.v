# Fibonnacci-Number
==================================Print Fibonnaci No, user provide value of n=============================================================

module fibonacci(input clk,rst,input[7:0]n,output[19:0]fib_no);

  reg[19:0]prev_val,curr_val;
  reg[7:0]count;
  reg num;
  
  
//////////////////////Intialization//////////////////////////////////  
  always@(posedge rst)
  begin
    prev_val<='d0;
    curr_val<='d1;
    count<='d1;
   end
      
//////////////////////////Fibonnaci Nos/////////////////////////////
   always@(posedge clock)
   begin
    count<=count+1;
    curr_val<=curr_val+prev_val;
    prev_value<=curr_value;
    if(count==n-2)
      num<=1;
    else
      num<=0;
    end
    
    assign fib_no<=curr_val;
    
     always@(num)
     if(num)
      $display("Nth=%d,Nth Fibonacci Num=%d",num,fib_no);
      
endmodule      
      
