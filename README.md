# Hadamard_Structure
A computational approach to the analysis of the pivot structure of 16th order Hadamard matrices

# Description

- **Equivalent_Hadamard (function)**

  Takes as input a Hadamard matrix and returns a random Equivalent matrix (H). It also returns the rows and columns that were interchanged (p, q) as well as the ones that were multiplied by -1 (r, c)
  

- **complete_pivoting (function)**

  Performs an LU decomposition with comlete pivoting. It takes as input a matrix and returns the lower and upper triangular matrices (L, U) as well as the permutation matrix P
  
- **partial_pivoting (function)**
  
  Performs an LU decomposition with partial pivoting. It takes as input a matrix and returns the lower and upper triangular matrices (L, U) as well as the permutation matrix P
  
- **pivot_structure_CP (function)**

  It takes as input a matrix and returns the pivot structure with complete pivoting
  
- **pivot_structure_PP (function)**

  It takes as input a matrix and returns the pivot structure with partial pivoting

- **Hadamard_CP_pivot_structure (script)**
  
  The script uses some of the functions above to compute and display the unique pivot structures each equivalence class of 16th order Hadamard matrices can have when Complete Pivoting is applied
  
- **Hadamard_PP_pivot_structure (script)**

  The script uses some of the functions above to compute and display the unique pivot structures each equivalence class of 16th order Hadamard matrices can have when Partial Pivoting is applied
  
  # Results
  
  Let <img src="https://latex.codecogs.com/svg.image?A\in&space;\mathbb{R}^{&space;n&space;\times&space;n}" title="A\in \mathbb{R}^{ n \times n}" /> be a completely pivoted matrix. Using the scripts above we can prove the following conjectures:
  
  1. The 4 last pivots are either n/2 or n/4, n/2, n/2, n
  2. The 5th to last pivot is n/3 or n/2
  3. The 6th to last pivot is n/4, 3n/10 or 3n/8
  4. The 2nd to last pivot is always at most n/2
  5. The 6 first pivots are equal to 1, 2, 2, 4, 2 or 3, 10/3 or 8/3 or 4
  6. The 5th pivot is 2
  7. The 6th pivot is 4
