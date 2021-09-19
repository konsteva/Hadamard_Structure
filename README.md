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
  
  1. The 4 last pivots are either <img src="https://latex.codecogs.com/svg.image?frac{n}{2}" title="frac{n}{2}" /> or <img src="https://latex.codecogs.com/svg.image?&space;frac{n}{4},&space;frac{n}{2},&space;frac{n}{2},&space;n" title=" frac{n}{4}, frac{n}{2}, frac{n}{2}, n" />
  2. The 5th to last pivot is <img src="https://latex.codecogs.com/svg.image?frac{n}{3}" title="frac{n}{3}" /> or <img src="https://latex.codecogs.com/svg.image?n/2" title="frac{n}{2}" />
  3. The 6th to last pivot is <img src="https://latex.codecogs.com/svg.image?n/4" title="frac{n}{4}" /> or <img src="https://latex.codecogs.com/svg.image?frac{3n}{10}" title="frac{3n}{8}" />
  4. The 2nd to last pivot is always at most <img src="https://latex.codecogs.com/svg.image?frac{n}{2}" title="frac{n}{2}" />
  5. The 6 first pivots are equal to <img src="https://latex.codecogs.com/svg.image?1,&space;2,&space;2,&space;4,&space;2" title="1, 2, 2, 4, 2" /> or <img src="https://latex.codecogs.com/svg.image?3,&space;\frac{10}{3}" title="3, \frac{10}{3}" /> or  <img src="https://latex.codecogs.com/svg.image?\frac{8}{3}" title="\frac{8}{3}" /> or <img src="https://latex.codecogs.com/svg.image?4" title="4" />
  6. The 5th pivot is <img src="https://latex.codecogs.com/svg.image?2" title="2" />
  7. The 6th pivot is <img src="https://latex.codecogs.com/svg.image?4" title="4" />
