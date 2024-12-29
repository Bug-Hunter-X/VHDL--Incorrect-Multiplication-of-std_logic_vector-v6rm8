# VHDL Multiplication Bug
This repository demonstrates a common error in VHDL code involving the multiplication of `std_logic_vector` types.  The provided VHDL code attempts to multiply two 8-bit vectors to produce a 16-bit result. However, the standard `*` operator performs a bitwise AND operation rather than arithmetic multiplication. 

The bug is demonstrated in `bug.vhdl`. The solution is shown in `bugSolution.vhdl`, which uses the `numeric_std` package to convert the vectors to unsigned integers before performing the multiplication.