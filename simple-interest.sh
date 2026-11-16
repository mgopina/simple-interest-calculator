#!/bin/bash

# Simple Interest Calculator
# Formula: SI = (P * R * T) / 100

read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (%): " rate
read -p "Enter the time period (in years): " time

# Validate that all inputs are numbers
for value in "$principal" "$rate" "$time"; do
    if ! [[ "$value" =~ ^[0-9]*\.?[0-9]+$ ]]; then
        echo "Error: please enter valid positive numbers."
        exit 1
    fi
done

si=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

echo "-----------------------------"
echo "Principal      : $principal"
echo "Rate           : $rate%"
echo "Time           : $time years"
echo "Simple Interest: $si"
echo "-----------------------------"
