% Cap. 4 / Ch. 4 - determinantes / determinants
% Reproduz o slide "Algebra Linear no computador" (deck 04). Para ver, nao para exame.
% Reproduces the slide "Linear algebra on the computer" (deck 04). Not examinable.
% Corre no MATLAB, no MATLAB Online e no GNU Octave.  J. F. A. Madeira - Licenca MIT.

C = [ 2 0  0;
     -6 2 -3;
     -6 0 -1];
d = det(C);                                  % calculado por eliminacao (LU), nao pela definicao
fprintf('det C = %.15f\n', d);               % -4 com erro de arredondamento ~1e-15 (o valor exato do erro depende do software)

% Porque nao se usa a definicao / why the definition is not used
n = 20;
termos = factorial(n);
anos = termos/1e9/(365.25*24*3600);
fprintf('n = %d: %.2e termos/terms -> cerca de/about %.0f anos/years a 1e9 termos/s\n', n, termos, anos);
fprintf('eliminacao / elimination: cerca de/about %.0f operacoes/operations\n', n^3/3);

% Nunca testar det == 0 em virgula flutuante / never test det == 0 in floating point
fprintf('rank (com tolerancia / with tolerance): %d\n', rank(C));

% Confere com os slides / matches the slides
ok = abs(d + 4) < 1e-12 && rank(C) == 3;
if ok, s = 'sim / yes'; else, s = 'NAO / NO'; end
fprintf('confere com os slides / matches the slides: %s\n', s);
