module ALU (input signed [3:0] A, B, input signed [1:0] ctrl, output signed [3:0] Z);



always@(*)

begin

  case(ctrl)

    2'b00: Z = A+B;  //  addition operation
    2'b01: Z = A&B;  //  Bitwise And Operation
    2'b10: Z = A<<B; //  Shift left logical operation
    'b11: Z = A>>B; //  Shift right logical operation

    default: Z='bXXXX;  // Default value 

  endcase

end



/* case ctrl is

    when "00"=>
        z <=  A+B;
    when "01" =>
	    z  <= A&B;
	when "10" =>
		z  <= A<<B ;
	when "11" =>
	    z  <= A>>B
	when others =>
			z <=(others => 'X');  

endcase */

endmodule
