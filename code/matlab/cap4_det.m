% Cap. 4 / Ch. 4 - determinantes / determinants
% Reproduz o slide "Algebra Linear no computador" (deck 04). Para ver, nao para exame.
C = [ 2 0  0;
     -6 2 -3;
     -6 0 -1];
fprintf('det C = %.15f\n', det(C));          % -4 com erro de arredondamento ~1e-15 (o valor exato do erro depende do software)
n = 20;
fprintf('n = %d: %.2e termos -> cerca de %.0f anos a 1e9 termos/s\n', n, factorial(n), factorial(n)/1e9/(365.25*24*3600));
fprintf('eliminacao: cerca de %.0f operacoes\n', n^3/3);
fprintf('rank (com tolerancia): %d\n', rank(C));
