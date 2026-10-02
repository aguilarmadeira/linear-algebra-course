# Álgebra Linear — slides, exercícios e código

**José Firmino Aguilar Madeira** · ORCID [0000-0001-9523-3808](https://orcid.org/0000-0001-9523-3808)

Material de uma UC introdutória de Álgebra Linear (engenharia, 1.º ano). Os slides e as folhas de exercícios existem em **português** (língua das aulas) e em **inglês britânico** (para alunos Erasmus), com a mesma numeração e a mesma notação.

🇬🇧 [English version of this README](README.md)

## Mapa da UC

| Cap. | Tema | Slides (PT) | Slides (EN) | Exercícios | Resoluções |
|---|---|---|---|---|---|
| 1 | Números complexos | [PDF](notes/pt/01_numeros_complexos.pdf) | [PDF](notes/en/01_numeros_complexos_en.pdf) | [Folha 1](exercises/pt/folha1.pdf) · [Sheet 1](exercises/en/folha1_en.pdf) <br><sub>ex. 1–14</sub> | — <!-- [PT](solutions/pt/folha1_resolucoes.pdf) · [EN](solutions/en/folha1_resolucoes_en.pdf) --> |
| 2 | Espaços vetoriais | [PDF](notes/pt/02_espacos_vetoriais.pdf) | [PDF](notes/en/02_espacos_vetoriais_en.pdf) | [Folha 2](exercises/pt/folha2.pdf) · [Sheet 2](exercises/en/folha2_en.pdf) <br><sub>ex. 16–38</sub> | — <!-- [PT](solutions/pt/folha2_resolucoes.pdf) · [EN](solutions/en/folha2_resolucoes_en.pdf) --> |
| 3 | Matrizes | [(I)](notes/pt/03_1_matrizes.pdf) · [(II)](notes/pt/03_2_matrizes.pdf) | [(I)](notes/en/03_1_matrizes_en.pdf) · [(II)](notes/en/03_2_matrizes_en.pdf) | [Folha 3](exercises/pt/folha3.pdf) · [Sheet 3](exercises/en/folha3_en.pdf) <br><sub>ex. 39–65</sub> | — <!-- [PT](solutions/pt/folha3_resolucoes.pdf) · [EN](solutions/en/folha3_resolucoes_en.pdf) --> |
| 4 | Determinantes | [PDF](notes/pt/04_determinantes.pdf) | [PDF](notes/en/04_determinantes_en.pdf) | [Folha 4](exercises/pt/folha4.pdf) · [Sheet 4](exercises/en/folha4_en.pdf) <br><sub>ex. 66–82</sub> | — <!-- [PT](solutions/pt/folha4_resolucoes.pdf) · [EN](solutions/en/folha4_resolucoes_en.pdf) --> |
| 5 | Produto interno e geometria | [(I)](notes/pt/05_1_produto_interno.pdf) · [(II)](notes/pt/05_2_geometria.pdf) | [(I)](notes/en/05_1_produto_interno_en.pdf) · [(II)](notes/en/05_2_geometria_en.pdf) | [Folha 5](exercises/pt/folha5.pdf) · [Sheet 5](exercises/en/folha5_en.pdf) <br><sub>ex. 83–98, S1–S10</sub> | — <!-- [PT](solutions/pt/folha5_resolucoes.pdf) · [EN](solutions/en/folha5_resolucoes_en.pdf) --> |
| 6 | Valores e vetores próprios | [PDF](notes/pt/06_valores_proprios.pdf) | [PDF](notes/en/06_valores_proprios_en.pdf) | [Folha 6](exercises/pt/folha6.pdf) · [Sheet 6](exercises/en/folha6_en.pdf) <br><sub>ex. 99–102</sub> | — <!-- [PT](solutions/pt/folha6_resolucoes.pdf) · [EN](solutions/en/folha6_resolucoes_en.pdf) --> |

- **Numeração:** os exercícios têm numeração contínua ao longo da UC (1–102; o ex. 15 foi retirado). S1–S10 são exercícios novos de geometria em ℝ³.
- **Resoluções:** são disponibilizadas ao longo do semestre; um traço significa «ainda não disponível».
- 📖 [Glossário português–inglês](notes/glossario_PT_EN.pdf)

## Código

Cada slide «Álgebra Linear no computador» tem um pequeno notebook que corre no navegador, sem instalar nada: basta clicar no botão. O mesmo código está também em [`code/python`](code/python) (NumPy) e [`code/matlab`](code/matlab) (MATLAB/Octave).

| Cap. | Colab | Script | Comandos |
|---|---|---|---|
| 3 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/aguilarmadeira/linear-algebra-course/blob/main/code/colab/cap3_rank_inv_solve.ipynb) | `cap3_rank_inv_solve` | `rank`, `inv`, `solve` / `\` |
| 4 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/aguilarmadeira/linear-algebra-course/blob/main/code/colab/cap4_det.ipynb) | `cap4_det` | `det` |
| 5 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/aguilarmadeira/linear-algebra-course/blob/main/code/colab/cap5_inner_product_qr.ipynb) | `cap5_inner_product_qr` | `dot`, `norm`, `qr` |
| 6 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/aguilarmadeira/linear-algebra-course/blob/main/code/colab/cap6_eig.ipynb) | `cap6_eig` | `eig` |

Para ver, não para exame.

## Licença

- **Slides e folhas (PDF):** [CC BY-NC-ND 4.0](LICENSE-notes.md).
- **Código:** [MIT](LICENSE).

## Como citar

Ver [`CITATION.cff`](CITATION.cff).
