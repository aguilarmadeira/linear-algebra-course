"""Cap. 3 / Ch. 3 — característica, inversa, sistemas / rank, inverse, linear systems.
Reproduz o slide «Álgebra Linear no computador» (deck 03_2). Para ver, não para exame.
Reproduces the slide "Linear algebra on the computer" (deck 03_2). Not examinable."""
import numpy as np
np.set_printoptions(precision=4, suppress=True)   # saída mais legível / cleaner output

# Matriz transversal da UC / the course's running matrix
C = np.array([[ 2, 0,  0],
              [-6, 2, -3],
              [-6, 0, -1]])
b = np.array([2, -11, -9])

print("car C / rank C =", np.linalg.matrix_rank(C))   # 3
print("C^-1 =\n", np.linalg.inv(C))                  # [[0.5,0,0],[-3,0.5,-1.5],[-3,0,-1]]
x = np.linalg.solve(C, b)                            # eliminação de Gauss, sem calcular a inversa
print("x =", x)                                      # [1. 2. 3.]
print("verificação / check C x - b =", C @ x - b)

# Confere com os slides / matches the slides
ok = (np.linalg.matrix_rank(C) == 3
      and np.allclose(np.linalg.inv(C), [[0.5, 0, 0], [-3, 0.5, -1.5], [-3, 0, -1]])
      and np.allclose(x, [1, 2, 3]))
print("confere com os slides / matches the slides:", "sim / yes" if ok else "NÃO / NO")
