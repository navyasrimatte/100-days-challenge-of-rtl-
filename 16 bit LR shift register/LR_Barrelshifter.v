`timescale 1ns / 1ps
//////////////////////////////////////////


module LR_Barrelshifter(input [15:0]A,[3:0] ctrl,input control,output reg [15:0] Y);
always @(*) begin 
if(control) begin
case(ctrl)
4'd0:Y=A;
4'd1:Y={A[0],A[15:1]};
4'd2:Y={A[1:0],A[15:2]};
4'd3:Y={A[2:0],A[15:3]};
4'd4:Y={A[3:0],A[15:4]};
4'd5:Y={A[4:0],A[15:5]};
4'd6:Y={A[5:0],A[15:6]};
4'd7:Y={A[6:0],A[15:7]};
4'd8:Y={A[7:0],A[15:8]};
4'd9:Y={A[8:0],A[15:9]};
4'd10:Y={A[9:0],A[15:10]};
4'd11:Y={A[10:0],A[15:11]};
4'd12:Y={A[11:0],A[15:12]};
4'd13:Y={A[12:0],A[15:13]};
4'd14:Y={A[13:0],A[15:14]};
4'd15:Y={A[14:0],A[15]};
default :Y=0;
endcase
end 

else begin
case(ctrl)
4'd0:Y=A;
4'd1:Y={A[14:0],A[15]};
4'd2:Y={A[13:0],A[15:14]};
4'd3:Y={A[12:0],A[15:13]};
4'd4:Y={A[11:0],A[15:12]};
4'd5:Y={A[10:0],A[15:11]};
4'd6:Y={A[9:0],A[15:10]};
4'd7:Y={A[8:0],A[15:9]};
4'd8:Y={A[7:0],A[15:8]};
4'd9:Y={A[6:0],A[15:7]};
4'd10:Y={A[5:0],A[15:6]};
4'd11:Y={A[4:0],A[15:5]};
4'd12:Y={A[3:0],A[15:4]};
4'd13:Y={A[2:0],A[15:3]};
4'd14:Y={A[1:0],A[15:2]};
4'd15:Y={A[0],A[15:1]};
default :Y=0;
endcase
end
end
endmodule