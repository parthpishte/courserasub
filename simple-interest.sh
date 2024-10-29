
#!/bin/bash

# Simple Interest Calculation Script

# Function to calculate simple interest
calculate_simple_interest() {
    local principal=$1
    local rate=$2
    local time=$3

    # Calculate Simple Interest
    local interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
    echo "The simple interest is: $interest"
}

# Main script execution
echo "Welcome to the Simple Interest Calculator!"

# Get user input
read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (in %): " rate
read -p "Enter the time period (in years): " time

# Validate input
if [[ ! $principal =~ ^[0-9]+([.][0-9]+)?$ ]] || [[ ! $rate =~ ^[0-9]+([.][0-9]+)?$ ]] || [[ ! $time =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Invalid input. Please enter numeric values only."
    exit 1
fi

# Call the function to calculate simple interest
calculate_simple_interest $principal $rate $time
