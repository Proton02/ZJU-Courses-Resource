`timescale 1ns / 1ps
module TruthEvaluator(
    input clk,
    input truth_detection,
    output trust_decision
);
// State definition
  localparam 
    Q1 = 2'b00, // HIGHLY_TRUSTWORTHY
    Q2 = 2'b01, // TRUSTWORTHY
    Q3 = 2'b10, // SUSPICIOUS
    Q4 = 2'b11; // UNTRUSTWORTHY

// First segment: state transfer
  reg [1:0]curr_state, next_state;

  initial begin
    curr_state = Q1;
  end

  always @(posedge clk) begin
        curr_state <= next_state; 
  end

// Sencond segment: transfer condition
  always @(*) begin // combination logic
    case(curr_state)
      Q1: begin
        if(truth_detection == 1'b1) next_state = Q1;
        else next_state = Q2;
      end
      Q2: begin
        if(truth_detection == 1'b1) next_state = Q1;
        else next_state = Q3;
      end
      Q3: begin
        if(truth_detection == 1'b1) next_state = Q2;
        else next_state = Q4;
      end
      Q4: begin
        if(truth_detection == 1'b1) next_state = Q3;
        else next_state = Q4;
      end
      default: next_state = Q1;
    endcase
  end

// Third segment: output
  assign trust_decision = (curr_state == Q1 || curr_state == Q2);

endmodule