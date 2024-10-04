# Nand 2 Tetris: Verilog Implementation

This repository contains the Verilog implementations and testbenches of the projects from the course Nand 2 Tetris.
I have also implemented these in the HDL language they provide in the course, those are stored in the web IDE of the course.

## Unit Tests

I implemented some simple unit test behavior via a bash script (`run_tests.sh`) that compiles and executes every testbench in the `test/` directory.
The script stores the output of the tests and compares it with the expected output.

We should be able to leverage this script with a Github action to run the tests on every push to the repository.

