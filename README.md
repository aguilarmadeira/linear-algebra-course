# Linear Algebra — slides, exercises and code

**José Firmino Aguilar Madeira** · ORCID [0000-0001-9523-3808](https://orcid.org/0000-0001-9523-3808)

Course material for an introductory Linear Algebra course (engineering, first year). Slides and exercise sheets are available in **Portuguese** (the teaching language) and in **British English** (for Erasmus students). Both versions have the same numbering and the same notation.

🇵🇹 [Versão portuguesa deste README](README.pt.md)

## Course map

| Ch. | Topic | Slides (PT) | Slides (EN) | Exercises | Solutions |
|---|---|---|---|---|---|
| 1 | Complex numbers | [PDF](notes/pt/01_numeros_complexos.pdf) | [PDF](notes/en/01_numeros_complexos_en.pdf) | [Folha 1](exercises/pt/folha1.pdf) · [Sheet 1](exercises/en/folha1_en.pdf) <br><sub>ex. 1–14</sub> | — <!-- [PT](solutions/pt/folha1_resolucoes.pdf) · [EN](solutions/en/folha1_resolucoes_en.pdf) --> |
| 2 | Vector spaces | [PDF](notes/pt/02_espacos_vetoriais.pdf) | [PDF](notes/en/02_espacos_vetoriais_en.pdf) | [Folha 2](exercises/pt/folha2.pdf) · [Sheet 2](exercises/en/folha2_en.pdf) <br><sub>ex. 16–38</sub> | — <!-- [PT](solutions/pt/folha2_resolucoes.pdf) · [EN](solutions/en/folha2_resolucoes_en.pdf) --> |
| 3 | Matrices | [(I)](notes/pt/03_1_matrizes.pdf) · [(II)](notes/pt/03_2_matrizes.pdf) | [(I)](notes/en/03_1_matrizes_en.pdf) · [(II)](notes/en/03_2_matrizes_en.pdf) | [Folha 3](exercises/pt/folha3.pdf) · [Sheet 3](exercises/en/folha3_en.pdf) <br><sub>ex. 39–65</sub> | — <!-- [PT](solutions/pt/folha3_resolucoes.pdf) · [EN](solutions/en/folha3_resolucoes_en.pdf) --> |
| 4 | Determinants | [PDF](notes/pt/04_determinantes.pdf) | [PDF](notes/en/04_determinantes_en.pdf) | [Folha 4](exercises/pt/folha4.pdf) · [Sheet 4](exercises/en/folha4_en.pdf) <br><sub>ex. 66–82</sub> | — <!-- [PT](solutions/pt/folha4_resolucoes.pdf) · [EN](solutions/en/folha4_resolucoes_en.pdf) --> |
| 5 | Inner product and geometry | [(I)](notes/pt/05_1_produto_interno.pdf) · [(II)](notes/pt/05_2_geometria.pdf) | [(I)](notes/en/05_1_produto_interno_en.pdf) · [(II)](notes/en/05_2_geometria_en.pdf) | [Folha 5](exercises/pt/folha5.pdf) · [Sheet 5](exercises/en/folha5_en.pdf) <br><sub>ex. 83–98, S1–S10</sub> | — <!-- [PT](solutions/pt/folha5_resolucoes.pdf) · [EN](solutions/en/folha5_resolucoes_en.pdf) --> |
| 6 | Eigenvalues and eigenvectors | [PDF](notes/pt/06_valores_proprios.pdf) | [PDF](notes/en/06_valores_proprios_en.pdf) | [Folha 6](exercises/pt/folha6.pdf) · [Sheet 6](exercises/en/folha6_en.pdf) <br><sub>ex. 99–102</sub> | — <!-- [PT](solutions/pt/folha6_resolucoes.pdf) · [EN](solutions/en/folha6_resolucoes_en.pdf) --> |

- Exercises are numbered continuously across the course (1–102; Ex. 15 was removed). S1–S10 are new exercises on geometry in ℝ³.
- Solutions are released during the semester (a dash means "not yet released").
- 📖 [Glossary Portuguese–English](notes/glossario_PT_EN.pdf) — the notation used in the slides (e.g. car A = rank A, sen = sin, L{…} = span{…}).

## Code

Each "Linear algebra on the computer" slide has a short script, in Python (NumPy) and in MATLAB/Octave, with the same output; each one ends with *matches the slides: yes*. **Colab** runs the Python notebook in the browser, with nothing to install. **MATLAB Online** (MathWorks account) copies the repository to your MATLAB Drive and opens the script: press **Run**. Without an account, download [`code/matlab`](code/matlab) and run the scripts in MATLAB or GNU Octave. **Tip:** Ctrl+click opens the buttons in a new tab. More details in [`code/README.md`](code/README.md).

| Ch. | Colab | MATLAB Online | Script | Commands |
|---|---|---|---|---|
| 3 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/aguilarmadeira/linear-algebra-course/blob/main/code/colab/cap3_rank_inv_solve.ipynb) | [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=aguilarmadeira/linear-algebra-course&file=code/matlab/cap3_rank_inv_solve.m) | [`cap3_rank_inv_solve.py`](code/python/cap3_rank_inv_solve.py) · [`cap3_rank_inv_solve.m`](code/matlab/cap3_rank_inv_solve.m) | `rank`, `inv`, `solve` / `\` |
| 4 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/aguilarmadeira/linear-algebra-course/blob/main/code/colab/cap4_det.ipynb) | [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=aguilarmadeira/linear-algebra-course&file=code/matlab/cap4_det.m) | [`cap4_det.py`](code/python/cap4_det.py) · [`cap4_det.m`](code/matlab/cap4_det.m) | `det` |
| 5 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/aguilarmadeira/linear-algebra-course/blob/main/code/colab/cap5_inner_product_qr.ipynb) | [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=aguilarmadeira/linear-algebra-course&file=code/matlab/cap5_inner_product_qr.m) | [`cap5_inner_product_qr.py`](code/python/cap5_inner_product_qr.py) · [`cap5_inner_product_qr.m`](code/matlab/cap5_inner_product_qr.m) | `dot`, `norm`, `qr` |
| 6 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/aguilarmadeira/linear-algebra-course/blob/main/code/colab/cap6_eig.ipynb) | [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=aguilarmadeira/linear-algebra-course&file=code/matlab/cap6_eig.m) | [`cap6_eig.py`](code/python/cap6_eig.py) · [`cap6_eig.m`](code/matlab/cap6_eig.m) | `eig` |

For illustration only — not examinable.

## Licence

- Slides and exercise sheets (PDF): [CC BY-NC-ND 4.0](LICENSE-notes.md).
- Code: [MIT](LICENSE).

## How to cite

See [`CITATION.cff`](CITATION.cff).
