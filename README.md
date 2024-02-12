# DV1493-assembly-code
DV1493 labs in BTH



# Assembly Code Explanations

## `mul_n` Assembly Code

This assembly code defines a recursive function `mul_n` to calculate the factorial of a given number. The code uses ARM assembly language and follows a recursive approach, multiplying the current number by the result of the factorial of the decremented number. The `main` section initializes the process with the number 10 and prints the result.

## `Sum of Numbers` Assembly Code

This assembly code calculates the sum of an array of numbers. The `main` section loads an array of numbers, iterates through them, and calculates the sum. The result is then printed to the console using a software interrupt (`SWI 0x6b`). The program terminates with `SWI 0x11`.

## `fact` Assembly Code

The `fact` assembly code defines a recursive function to calculate the factorial of a given number. Similar to the `mul_n` code, it follows a recursive approach. The `main` section initiates the process by calling the `fact` function with the number 4 and prints the results in a loop. The program terminates with `SWI 0x11`.

These assembly code snippets demonstrate fundamental concepts in programming, including recursion, function calls, and basic arithmetic operations. The programs are written in ARM assembly language and include comments for clarity.

# Lab 2: Binary Counter

## Makefile

The Makefile is designed for compiling the source code. Key rules include:

- **`all:`**: Compiles the `counter` executable.
- **`submission:`**: Creates a tarball (`submission.tgz`) containing source files and the Makefile.
- **`clean:`**: Removes object files and the `counter` executable.

The compilation uses `gcc` with specific flags (`CFLAGS` and `LFLAGS`), and the clean rule ensures the removal of generated files.

## counter.s

This assembly code implements a binary counter with GPIO setup and interrupt handling subroutines. Notable functions:

- **`setup`**: Initializes GPIO pins.
- **`interrupt`**: Increments the counter and updates LED states based on binary representation.
- **`setGPIO_high` and `setGPIO_low`**: Set GPIO pins to high or low.

## counter.c

The C program acts as the main driver. It interacts with GPIO, calls assembly functions, and displays the binary counter state. Functions include:

- **`main`**: Continuously updates and displays the binary counter state.
- **`setup`**: Initializes GPIO.
- **`interrupt`**: Handles user input, triggers GPIO changes.
- **`display_gpio`**: Visually represents the binary counter state.

**Usage**: Press any key to increment the counter, 'q' to exit. The program uses raw mode for interactive input.

**Note**: Further details on functions are found in their respective source files.

*This documentation serves as an overview; additional details are available in the source files.*
