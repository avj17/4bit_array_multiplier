`timescale 1ns / 1ps

module tb_mult;

    // Inputs
    reg clk;
    reg rst_n;
    reg [3:0] a;
    reg [3:0] b;

    // Outputs
    wire [7:0] p;

    // Loop and tracking variables
    integer i, j;
    integer errors;
    integer vectors;

    // Instantiate the Unit Under Test (UUT)
    mult_array uut (
        .clk(clk),
        .rst_n(rst_n),
        .a(a),
        .b(b),
        .p(p)
    );

    // 1. Generate a clock with a 10 ns period
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // 2. Waveform dumping[cite: 7]
    initial begin
        $dumpfile("mult.vcd");
        $dumpvars(0, tb_mult);
    end

    // 3. Main test sequence[cite: 7]
    initial begin
        // Initialize inputs and counters
        a = 4'd0;
        b = 4'd0;
        rst_n = 1'b0;
        errors = 0;
        vectors = 0;

        // Hold rst_n low for the first 2 cycles[cite: 7]
        @(posedge clk);
        @(posedge clk);
        #4 rst_n = 1'b1;

        // Apply all 256 input combinations[cite: 7]
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                // Apply inputs on the negative edge to ensure stable setup time
                @(negedge clk);
                a = i[3:0];
                b = j[3:0];

                // Wait two rising clock edges after applying inputs before comparing[cite: 15]
                @(posedge clk); // Edge 1: inputs captured into a_reg and b_reg[cite: 3]
                @(posedge clk); // Edge 2: result captured into output register p[cite: 3]
                
                // Wait a tiny delay after the clock edge to read the stable output
                #4; 
                
                // Compare p with expected value a * b[cite: 7]
                if (p !== (a * b)) begin
                    $display("Mismatch: a=%d, b=%d, expected=%d, got=%d", a, b, a*b, p);
                    errors = errors + 1;
                end
                
                vectors = vectors + 1;
            end
        end

        // Print exactly one summary line[cite: 7]
        if (errors == 0) begin
            $display("PASS: %0d vectors checked, 0 errors", vectors);
        end else begin
            $display("FAIL: %0d vectors checked, %0d errors", vectors, errors);
        end

        $finish;
    end

endmodule