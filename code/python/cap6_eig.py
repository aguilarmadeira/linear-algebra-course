"""Cap. 6 / Ch. 6 — valores e vetores próprios / eigenvalues and eigenvectors.
Reproduz o slide «Álgebra Linear no computador» (deck 06). Para ver, não para exame.
Reproduces the slide "Linear algebra on the computer" (deck 06). Not examinable."""
import numpy as np
np.set_printoptions(precision=4, suppress=True)   # saída mais legível / cleaner output

C = np.array([[ 2, 0,  0],
              [-6, 2, -3],
              [-6, 0, -1]], dtype=float)
lam, P = np.linalg.eig(C)
print("valores próprios / eigenvalues:", lam)      # [ 2. -1.  2.]
print("P (colunas de norma 1 / unit columns) =\n", np.round(P, 4))
print("P^-1 C P =\n", np.round(np.linalg.inv(P) @ C @ P, 12))

# Cidade e campo: evolução a longo prazo / city and countryside: long-term behaviour
M = np.array([[0.9, 0.2],
              [0.1, 0.8]])
x = np.array([0.5, 0.5])
for k in range(1, 51):
    x = M @ x
    if k in (1, 10, 50):
        print(f"x_{k} =", np.round(x, 4))           # -> (2/3, 1/3)

# Confere com os slides / matches the slides
D = np.linalg.inv(P) @ C @ P
ok = (np.allclose(np.sort(lam), [-1, 2, 2]) and np.allclose(D, np.diag(np.diag(D)))
      and np.allclose(x, [2/3, 1/3], atol=1e-6))
print("confere com os slides / matches the slides:", "sim / yes" if ok else "NÃO / NO")
