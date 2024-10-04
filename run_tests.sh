#!/bin/bash

# Base test directory
TEST_BASE_DIR="test"

# Find all testbench files in the format `_tb.v` in the test directories
find "$TEST_BASE_DIR" -type f -name "*_tb.v" | while read -r tb_file; do
    # Extract paths and file names for test bench and expected output
    tb_dir=$(dirname "$tb_file")
    tb_name=$(basename "$tb_file" "_tb.v")
    tb_file_base="${tb_dir}/${tb_name}"
    
    # Output paths
    output_file="${tb_file_base}_output.txt"
    expected_output="${tb_file_base}_expect.txt"
    compiled_output="${tb_file_base}_tb.out"

    # Compile the test bench
    iverilog "$tb_file" -o "${compiled_output}"
    
    # Run the compiled test bench and filter out the $finish line
    "${compiled_output}" | grep -v "\$finish" > "$output_file"

    # Remove the trailing newline from the output file
    truncate -s -1 "$output_file"
    
    # Compare the output with the expected output
    if diff -q "$output_file" "$expected_output" > /dev/null; then
        echo "Test ${tb_name}_tb: PASS"
    else
        echo "Test ${tb_name}_tb: FAIL"
        echo "Differences:"
        diff "$output_file" "$expected_output"
        exit 1
    fi
done