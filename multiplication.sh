#!/bin/bash

# Prompt the user to enter a number
echo "Please enter a number:"
read number


# Ask the user whether they want the table in ascending or descending order
echo "Would you like to see the table in ascending or descending order? (Enter 'ascending' or 'descending')"
read order

# Ask the user if they want a full or partial multiplication table
echo "Would you like to see a full multiplication table (1 to 10) or a partial table? (Enter 'full' or 'partial')"
read table_type

if [ "$table_type" == "partial" ]; then
    # For partial table, prompt the user for the start and end of the range
    echo "Enter the start of the range:"
    read start
    echo "Enter the end of the range:"
    read end

    # Validate that start is less than or equal to end
    if [ "$start" -le "$end" ] && [ "$start" -ge 1 ] && [ "$end" -le 10 ]; then
        # Part 1: Using List Form For Loop (Partial Table)
        echo "Multiplication Table for $number (List Form) - Range $start to $end:"
        if [ "$order" == "ascending" ]; then
            for i in $(seq $start $end); do
                result=$((number * i))
                echo "$number * $i = $result"
            done
        elif [ "$order" == "descending" ]; then
            for i in $(seq $end -1 $start); do
                result=$((number * i))
                echo "$number * $i = $result"
            done
        else
            echo "Invalid choice for order. Please choose 'ascending' or 'descending'."
        fi

        # Part 2: Using C-style For Loop (Partial Table)
        echo "Multiplication Table for $number (C-style Form) - Range $start to $end:"
        if [ "$order" == "ascending" ]; then
            for ((i=start; i<=end; i++)); do
                result=$((number * i))
                echo "$number * $i = $result"
            done
        elif [ "$order" == "descending" ]; then
            for ((i=end; i>=start; i--)); do
                result=$((number * i))
                echo "$number * $i = $result"
            done
        else
            echo "Invalid choice for order. Please choose 'ascending' or 'descending'."
        fi
    else
        echo "Invalid range. Please ensure that the start is less than or equal to the end and both are between 1 and 10."
    fi
else
    # Full Table: Part 1 - List Form For Loop (Full Table 1 to 10)
    echo "Multiplication Table for $number (List Form) - Full Table (1 to 10):"
    if [ "$order" == "ascending" ]; then
        for i in {1..10}; do
            result=$((number * i))
            echo "$number * $i = $result"
        done
    elif [ "$order" == "descending" ]; then
        for i in {10..1}; do
            result=$((number * i))
            echo "$number * $i = $result"
        done
    else
        echo "Invalid choice for order. Please choose 'ascending' or 'descending'."
    fi

    # Part 2: Using C-style For Loop (Full Table 1 to 10)
    echo "Multiplication Table for $number (C-style Form) - Full Table (1 to 10):"
    if [ "$order" == "ascending" ]; then
        for ((i=1; i<=10; i++)); do
            result=$((number * i))
            echo "$number * $i = $result"
        done
    elif [ "$order" == "descending" ]; then
        for ((i=10; i>=1; i--)); do
            result=$((number * i))
            echo "$number * $i = $result"
        done
    else
        echo "Invalid choice for order. Please choose 'ascending' or 'descending'."
    fi
fi

