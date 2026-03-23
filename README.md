# LU Decomposition Solver

## 📌 Overview
This repository contains a MATLAB/GNU Octave implementation of **LU Decomposition** using **Crout's algorithm**. The script is designed to solve a system of linear equations in the form of $AX = B$ by decomposing the square matrix $A$ into a lower triangular matrix ($L$) and an upper triangular matrix ($U$).

This specific project serves as an educational example, demonstrating the step-by-step mathematical operations for a $4 \times 4$ matrix without relying on built-in high-level solver functions.

## 🧮 Mathematical Background
The algorithm solves the system $AX = B$ in three main steps:
1. **Decomposition:** Factoring the coefficient matrix $A$ such that $A = LU$.
2. **Forward Substitution:** Solving the equation $LY = B$ for the intermediate vector $Y$.
3. **Backward Substitution:** Solving the equation $UX = Y$ for the final solution vector $X$.

## 🚀 Features
* **Matrix Factorization:** Calculates $L$ and $U$ matrices using Crout's method.
* **Algorithmic Transparency:** The $4 \times 4$ matrix operations are explicitly written out, making it easy to trace the math behind the loops.
* **Built-in Verification:** Automatically multiplies the original matrix $A$ by the calculated result $X$ to verify that it matches the original constants vector $B$.

## 🛠️ Technologies Used
* **MATLAB / GNU Octave**

