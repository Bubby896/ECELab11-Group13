# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Zyad Kadri, Hiram Silva

## Summary
	In this lab, we learned how to build two different types of clock dividers using a ripple counter, and a modulo counter. For the ripple counter, we connected T-FlipFlops together to divide the clock by 8. Then we used a full adder, D-FlipFlops, and comparator logic for the modulo counter to divide by 12.

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
	One full clock cycle requires the signal to go from low to high and then back. Because the modulo counter toggles its output every time it reaches the target count, it takes one full count for the high half of the cycle and a second full count for the low half. This means that it takes 2 * Count input clock cycles for one full output cycle.

### 2 - Why does the ripple counter's output go to all 1s on the first clock cycle?
	Because the ripple counter connects positive-edge-trigger T-FlipFlops that start at 0, the first clock edge toggles the first flip-flop from 0 to 1. That immediately triggers the second flip-flop to toggle from 0 to 1, which then triggers the third flip-flop to toggle from 0 to 1. As a result, all stages ripple to 1 on the very first clock cycle.

### 3 - What width of ripple counter would you use to get to an output of ~1KHz?
	To divide the Basys 3 board's 100 MHz clock down to ~1 kHz, we would need a division factor of about 100,000. Since an N-bit ripple counter divides by 2^N, 17 bits gives 2^17 = 131,072 (~763 Hz), which gets closest to 1 kHz.
