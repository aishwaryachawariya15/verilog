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
endmodule
