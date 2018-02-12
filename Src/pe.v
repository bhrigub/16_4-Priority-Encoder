module pe (output reg [3:0] op, output reg valid, input [15:0] ip);
reg [4:0] temp1;
integer temp2=16;
//always @ (*)
//begin  
//  while (temp1===5'bxxxxx)
//  begin
//if (ip[temp2-1]==1)
//	temp1={temp2-1,1'b1};
//else
//	temp2=temp2-1;
//end
always @ ip
begin
				if (ip[15]==1'b1) 
				temp1=5'b11111;
				else if (ip[14]==1'b1)
				temp1=5'b11101;
				else if (ip[13]==1'b1)
				temp1=5'b11011;
				else if (ip[12]==1'b1)
				temp1=5'b11001;
				else if (ip[11]==1'b1)
				temp1=5'b10111;
				else if (ip[10]==1'b1)
				temp1=5'b10101;
				else if (ip[9]==1'b1)
				temp1=5'b10011;
				else if (ip[8]==1'b1)
				temp1=5'b10001;
				else if (ip[7]==1'b1)
				temp1=5'b01111;
				else if (ip[6]==1'b1)
				temp1=5'b01101;
				else if (ip[5]==1'b1)
				temp1=5'b01011;
				else if (ip[4]==1'b1)
				temp1=5'b01001;
				else if (ip[3]==1'b1)
				temp1=5'b00111;
				else if (ip[2]==1'b1)
				temp1=5'b00101;
				else if (ip[1]==1'b1)
				temp1=5'b00011;
				else if (ip[0]==1'b1)
				temp1=5'b00001;
				
op=temp1[4:1];
valid=temp1[0];
end

endmodule


//---------------------TB------------------------//
module tb ();
wire  [3:0] top;
wire tvalid;
reg [15:0] tip;

 pe p1 (top, tvalid, tip);
 
 always 
 begin
  tip=$random; #10;
end
endmodule