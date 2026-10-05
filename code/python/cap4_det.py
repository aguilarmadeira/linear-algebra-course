"""Cap. 4 / Ch. 4 — determinantes / determinants.
Reproduz o slide «Álgebra Linear no computador» (deck 04). Para ver, não para exame.
Reproduces the slide "Linear algebra on the computer" (deck 04). Not examinable."""
import math
import numpy as np
np.set_printoptions(precision=4, suppress=True)   # saída mais legível / cleaner output

C = np.array([[ 2, 0,  0],
              [-6, 2, -3],
              [-6, 0, -1]])
d = np.linalg.det(C)          # calculado por eliminação (LU), não pela definição
print("det C =", float(d))     # -4.000000000000001 (erro de arredondamento / rounding error)

# Porque não se usa a definição / why the definition is not used
n = 20
termos = math.factorial(n)
anos = termos / 1e9 / (365.25 * 24 * 3600)
print(f"n = {n}: {termos:.2e} termos/terms -> cerca de/about {anos:.0f} anos/years a 1e9 termos/s")
print(f"eliminação / elimination: cerca de/about {n**3/3:.0f} operações/operations")

# Nunca testar det == 0 em vírgula flutuante / never test det == 0 in floating point
print("matrix_rank (com tolerância / with tolerance):", np.linalg.matrix_rank(C))

# Confere com os slides / matches the slides
ok = abs(d + 4) < 1e-12 and np.linalg.matrix_rank(C) == 3
print("confere com os slides / matches the slides:", "sim / yes" if ok else "NÃO / NO")
