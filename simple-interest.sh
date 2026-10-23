#!/bin/bash
# Simple Interest Calculator

echo "---------------------------------"
echo "   Simple Interest Calculator   "
echo "---------------------------------"

# Prompt user for inputs
read -p "Enter Principal amount: " p
read -p "Enter Rate of interest per year (%): " r
read -p "Enter Time period (in years): " t

# Calculate Simple Interest: SI = (P * R * T) / 100
# Using 'bc' or basic arithmetic for calculations
interest=$(echo "scale=2; ($p * $r * $t) / 100" | bc 2>/dev/null || awk "BEGIN {print ($p * $r * $t) / 100}")

echo "---------------------------------"
echo "Calculated Simple Interest: $interest"
echo "---------------------------------"
