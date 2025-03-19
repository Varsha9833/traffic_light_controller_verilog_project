// Verilog code for Test bench
module tb;
reg clock; // Define clock signal
wire red, yellow, green;

// Instantiate the DUT (Design Under Test)
traffic_light_controller uut (
    .clock(clock), 
    .red(red), 
    .yellow(yellow), 
    .green(green)
);

// Generate a clock signal
initial begin
    clock = 0; // Initialize clock
    forever #5 clock = ~clock; // Toggle clock every 5 time units
end

// Stop simulation after some time
initial begin
    #1000 $stop;
end

endmodule
