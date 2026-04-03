module home_security_system(
    input wire sensor_ir,      // IR fire sensor input (digital)
    input wire sensor_lpg,     // MQ6 LPG sensor input (digital)
    input wire sensor_smoke,   // MQ2 smoke sensor input (digital)
    output wire buzzer         // Buzzer output
);

wire warning_flag;

// Instantiate sensor_monitor module
sensor_monitor sm (
    .sensor_ir(sensor_ir),
    .sensor_lpg(sensor_lpg),
    .sensor_smoke(sensor_smoke),
    .warning_flag(warning_flag)
);

// Instantiate buzzer_control module
buzzer_control bc (
    .warning_flag(warning_flag),
    .buzzer(buzzer)
);

endmodule
