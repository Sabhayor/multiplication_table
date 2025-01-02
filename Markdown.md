## Capstone Project - Linux Shell Scripting
### Bash Script For Generating a Multiplication Table
#### Overview
I wrote this Bash script to generate multiplication tables for a user-defined number, with an option to display the results in either ascending or descending order. I wanted to make it versatile, so I included the ability for users to choose between a **full multiplication table** (covering numbers 1 through 10) or a **partial multiplication table** (where users can specify a custom range). Additionally, I wanted to experiment with different styles of `for` loops in Bash—**List Form** and **C-style**—to understand their differences and showcase them in the script.

#### Script Features
1. **User Input for the Number:**
   - The first thing I did was prompt the user to enter a number. This number is used to generate the multiplication table. I wanted to make sure the input is clear and easy for the user to follow.

2. **Order Selection:**
   - After entering the number, I gave the user the option to choose whether they'd prefer the multiplication table to be displayed in ascending or descending order. I thought this would add a nice level of customization to the output.

3. **Full or Partial Table:**
   - I wanted to give the user even more flexibility, so I included the option to choose between a **full multiplication table** (from 1 to 10) or a **partial table** (where the user can define a custom range).
   - If the user picks a partial table, I prompt them for the `start` and `end` values, ensuring these inputs are valid (start ≤ end, and both are between 1 and 10). This part of the script took a little extra thought, as I needed to ensure the input was correctly validated.

4. **Loop Styles:**
   - I made sure to use both **List Form** and **C-style** `for` loops in the script. I was curious to compare the syntax of these two styles and how they would work for the same task. 
     - **List Form Loop**: This is simpler, using the `{1..10}` syntax to generate a sequence of numbers. I think this is great for small, straightforward loops.
     - **C-style Loop**: This style gives more control, and I found it interesting to explicitly define the loop’s initialization, condition, and increment.

5. **Validation:**
   - To make the script robust, I added validation checks to ensure that if the user selects a partial table, their range is valid. If they don’t follow the input requirements, I prompt them again, which I think improves the user experience.

6. **Formatted Output:**
   - I took care to format the output in a clear way, like `5 * 3 = 15`, so the results are easy to follow. I wanted the script to be as user-friendly as possible.

7. **Customization:**
   - By allowing the user to choose the order (ascending or descending) and whether they want a full or partial table, I feel like I’ve given them the flexibility to customize the multiplication table to their needs.
