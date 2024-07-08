`timescale 1ns / 1ps

module TruthEvaluator_tb;
    reg clk;
    reg truth_detection;
    wire trust_decision;

    TruthEvaluator UUT(.clk(clk), .truth_detection(truth_detection), .trust_decision(trust_decision));
    
    always #10 clk = ~clk;
    initial begin
        clk = 0;
    end

    integer i;
    reg [7:0] order = 8'b11110000;
    reg [15:0] muddled = 16'b1010_0010_1110_1100;
    initial begin
        // in order
        for(i = 0; i <= 7; i = i + 1) begin
            truth_detection = order[i];
            #10;
        end

        // out of order
        for(i = 0; i <= 15; i = i + 1)begin
            truth_detection = muddled[i];
            #10;
        end
    #100 $stop();
    end

endmodule