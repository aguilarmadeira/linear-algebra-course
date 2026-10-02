% Cap. 3 / Ch. 3 - caracteristica, inversa, sistemas / rank, inverse, linear systems
% Reproduz o slide "Algebra Linear no computador" (deck 03_2). Para ver, nao para exame.
C = [ 2 0  0;
     -6 2 -3;
     -6 0 -1];
b = [2; -11; -9];
fprintf('car C / rank C = %d\n', rank(C));   % 3
disp('C^-1 ='); disp(inv(C));
x = C \ b;                                   % eliminacao de Gauss, sem calcular a inversa
disp('x ='); disp(x');                       % [1 2 3]
