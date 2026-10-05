"""Cap. 5 / Ch. 5 — produto interno e QR / inner product and QR.
Reproduz o slide «Álgebra Linear no computador» (deck 05_1). Para ver, não para exame.
Reproduces the slide "Linear algebra on the computer" (deck 05_1). Not examinable."""
import numpy as np
np.set_printoptions(precision=4, suppress=True)   # saída mais legível / cleaner output

u = np.array([1, 2, -1])
v = np.array([3, 0, 2])
print("u . v =", u @ v)                          # 1
print("||(1,2,-2)|| =", np.linalg.norm([1, 2, -2]))  # 3.0

# Colunas (3,1) e (2,2): Gram-Schmidt escrito com matrizes / Gram-Schmidt in matrix form
A = np.array([[3, 2],
              [1, 2]])
Q, R = np.linalg.qr(A)
print("Q =\n", Q)         # colunas ±(3,1)/sqrt(10), ±(-1,3)/sqrt(10)
print("R =\n", R)         # triangular superior / upper triangular
print("Q^T Q =\n", np.round(Q.T @ Q, 12))   # identidade / identity
print("QR - A =\n", np.round(Q @ R - A, 12))

# Extensão: projeção sobre um subespaço / extension: projection onto a subspace
e1 = np.array([1, 1, 0]) / np.sqrt(2)
e2 = np.array([0, 0, 1])
w = np.array([3, 1, 2])
p = (w @ e1) * e1 + (w @ e2) * e2
print("proj_V (3,1,2) =", p, "  resto/remainder:", w - p)   # (2,2,2), (1,-1,0)

# Confere com os slides / matches the slides
ok = (u @ v == 1 and np.isclose(np.linalg.norm([1, 2, -2]), 3)
      and np.allclose(Q.T @ Q, np.eye(2)) and np.allclose(Q @ R, A) and abs(R[1, 0]) < 1e-12
      and np.allclose(np.abs(Q[:, 0]), np.array([3, 1]) / np.sqrt(10))
      and np.allclose(p, [2, 2, 2]))
print("confere com os slides / matches the slides:", "sim / yes" if ok else "NÃO / NO")
