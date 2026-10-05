# Código da UC — como correr

Há um exemplo por slide «Álgebra Linear no computador» (caps. 3–6), em três formas que fazem o mesmo:

| Pasta | O que é |
|---|---|
| [`python/`](python) | scripts NumPy (`cap*.py`) |
| [`matlab/`](matlab) | os mesmos scripts para MATLAB / GNU Octave (`cap*.m`) |
| [`colab/`](colab) | os mesmos exemplos em notebook, com texto, para o Colab (`cap*.ipynb`) |

- **Cada ficheiro é independente:** não há funções partilhadas nem caminhos a configurar. Uma pasta copiada sozinha corre.
- **Python e MATLAB dão a mesma saída.** Cada exemplo termina com *confere com os slides: sim*, depois de comparar os resultados com os valores dos slides.
- **Para ver, não para exame.** Os comandos são só os da UC: `rank`, `inv`, `solve` / `\` (cap. 3), `det` (cap. 4), `qr` (cap. 5) e `eig` (cap. 6).

## Correr no Colab (sem instalar nada)

| Capítulo | Colab |
|---|---|
| 3 Matrizes — característica, inversa, sistemas | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/aguilarmadeira/linear-algebra-course/blob/main/code/colab/cap3_rank_inv_solve.ipynb) |
| 4 Determinantes | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/aguilarmadeira/linear-algebra-course/blob/main/code/colab/cap4_det.ipynb) |
| 5 Produto interno e QR | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/aguilarmadeira/linear-algebra-course/blob/main/code/colab/cap5_inner_product_qr.ipynb) |
| 6 Valores e vetores próprios | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/aguilarmadeira/linear-algebra-course/blob/main/code/colab/cap6_eig.ipynb) |

No Colab: **Runtime → Run all** (ou Ctrl+F9).

## Correr no MATLAB Online (para quem tem conta MathWorks)

O link copia o repositório para o seu MATLAB Drive e abre o script do capítulo: carregue em **Run**. Se o MATLAB perguntar, escolha **Change Folder**. Ctrl+clique no botão abre-o num separador novo. Quem não tem conta descarrega a pasta `matlab/` e corre os scripts no MATLAB ou no GNU Octave.

| Capítulo | MATLAB Online |
|---|---|
| 3 Matrizes — característica, inversa, sistemas | [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=aguilarmadeira/linear-algebra-course&file=code/matlab/cap3_rank_inv_solve.m) |
| 4 Determinantes | [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=aguilarmadeira/linear-algebra-course&file=code/matlab/cap4_det.m) |
| 5 Produto interno e QR | [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=aguilarmadeira/linear-algebra-course&file=code/matlab/cap5_inner_product_qr.m) |
| 6 Valores e vetores próprios | [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=aguilarmadeira/linear-algebra-course&file=code/matlab/cap6_eig.m) |

## Diferenças entre programas

- **`det`:** o resultado pode diferir de −4 no último algarismo (p. ex. −4.000000000000001 no NumPy e −4 exato no Octave). É erro de arredondamento e depende do programa e do computador; por isso a verificação compara com tolerância e nunca testa `det == 0`.
- **`eig`:** a ordem dos valores próprios e o sinal dos vetores próprios podem variar entre programas. A verificação ordena os valores próprios e confirma que $P^{-1}CP$ é diagonal.
- **`qr`:** as colunas de $Q$ podem vir com o sinal trocado em relação às obtidas à mão. A verificação compara os valores absolutos.

Testado com Python 3.11 (NumPy 2.4) e GNU Octave 8.4; os notebooks foram executados de ponta a ponta.
