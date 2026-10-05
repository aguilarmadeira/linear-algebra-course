% Cap. 6 / Ch. 6 - valores e vetores proprios / eigenvalues and eigenvectors
% Reproduz o slide "Algebra Linear no computador" (deck 06). Para ver, nao para exame.
% Reproduces the slide "Linear algebra on the computer" (deck 06). Not examinable.
% Corre no MATLAB, no MATLAB Online e no GNU Octave.  J. F. A. Madeira - Licenca MIT.

C = [ 2 0  0;
     -6 2 -3;
     -6 0 -1];
[P, D] = eig(C);
lam = diag(D)';
disp('valores proprios / eigenvalues:'); disp(lam);   % 2, 2, -1 (a ordem pode variar / order may vary)
disp('P (colunas de norma 1 / unit columns) ='); disp(round(1e4*P)/1e4);
disp('P^-1 C P ='); disp(round(1e12*(P \ C * P))/1e12);

% Cidade e campo: evolucao a longo prazo / city and countryside: long-term behaviour
M = [0.9 0.2;
     0.1 0.8];
x = [0.5; 0.5];
for k = 1:50
    x = M*x;
    if any(k == [1 10 50])
        fprintf('x_%d = (%.4f, %.4f)\n', k, x);      % -> (2/3, 1/3)
    end
end

% Confere com os slides / matches the slides
Dc = P \ C * P;
ok = norm(sort(lam) - [-1 2 2]) < 1e-12 && norm(Dc - diag(diag(Dc))) < 1e-12 && norm(x - [2/3; 1/3]) < 1e-6;
if ok, s = 'sim / yes'; else, s = 'NAO / NO'; end
fprintf('confere com os slides / matches the slides: %s\n', s);
