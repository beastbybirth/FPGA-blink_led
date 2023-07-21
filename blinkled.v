// create module
	module blink (
	input wire clk, // 50MHz input clock
	output wire LED, // LED ouput
	output wire LED1,
	output wire LED2,
	output wire LED3,
	output wire LED4
	);

// create a binary counter
	reg [31:0] cnt; // 32-bit counter

initial begin

cnt <= 32'h00000000; // start at zero

end

always @(posedge clk) begin

cnt <= cnt + 1; // count up

end

//assign LED to 25th bit of the counter to blink the LED at a few Hz
assign LED = cnt[24];
assign LED1 = cnt[24];
assign LED2 = cnt[23];
assign LED3 = cnt[23];
assign LED4 = cnt[22];

endmodule
