% Cap. 6 / Ch. 6 - valores e vetores proprios / eigenvalues and eigenvectors
% Reproduz o slide "Algebra Linear no computador" (deck 06). Para ver, nao para exame.
C = [ 2 0  0;
     -6 2 -3;
     -6 0 -1];
[P, D] = eig(C);
disp('D ='); disp(D);                        % valores proprios 2, 2, -1 (a ordem pode variar)
disp('P ='); disp(P);                        % colunas de norma 1
M = [0.9 0.2;
     0.1 0.8];
x = [0.5; 0.5];
for k = 1:50
    x = M*x;
end
disp('x_50 ='); disp(x');                    % -> (2/3, 1/3)
