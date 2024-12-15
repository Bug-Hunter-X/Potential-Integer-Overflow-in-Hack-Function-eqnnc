# Potential Integer Overflow in Hack Function

This repository demonstrates a potential integer overflow bug in a simple Hack function.  The `bar` function multiplies the result of `foo` by 2.  If the input value to `foo` is large enough, multiplying by 2 could result in an integer overflow.

## Bug Description

The bug occurs due to the lack of explicit error handling for potential integer overflows within the Hack language.  The code doesn't check the bounds of the intermediate calculations, and if they exceed the maximum representable integer value, the result will be an incorrect value (due to overflow). This is a common issue with integer arithmetic in many languages.

## Solution

To prevent integer overflows, the solution uses a larger integer type or introduces checks to ensure the calculations stay within the safe range before performing the multiplication.

## How to reproduce

1. Clone this repository.
2. Run the Hack code using the HHVM (or similar) compiler and interpreter.
3. Observe the output of the `main` function.
4. Adjust the input value for `x` to a very large value to trigger the overflow.
