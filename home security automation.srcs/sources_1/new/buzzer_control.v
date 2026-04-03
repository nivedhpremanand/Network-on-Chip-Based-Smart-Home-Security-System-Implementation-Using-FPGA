module buzzer_control(
    input wire warning_flag,  // Input from sensor monitor
    output reg buzzer         // Output to buzzer (active high)
);

always @(*) begin
    if (warning_flag)
        buzzer = 1'b1;  // Turn buzzer ON when warning_flag is high
    else
        buzzer = 1'b0;  // Turn buzzer OFF otherwise
end

endmodule
