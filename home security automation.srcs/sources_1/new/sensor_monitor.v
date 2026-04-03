module sensor_monitor(
    input wire sensor_ir,    // Digital input from IR fire sensor
    input wire sensor_lpg,   // Digital input from MQ6 LPG sensor
    input wire sensor_smoke, // Digital input from MQ2 smoke sensor
    output wire warning_flag // High if any sensor detects danger
);

assign warning_flag = sensor_ir | sensor_lpg | sensor_smoke;

endmodule
