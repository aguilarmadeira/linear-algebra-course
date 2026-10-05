% Cap. 3 / Ch. 3 - caracteristica, inversa, sistemas / rank, inverse, linear systems
% Reproduz o slide "Algebra Linear no computador" (deck 03_2). Para ver, nao para exame.
% Reproduces the slide "Linear algebra on the computer" (deck 03_2). Not examinable.
% Corre no MATLAB, no MATLAB Online e no GNU Octave.  J. F. A. Madeira - Licenca MIT.

% Matriz transversal da UC / the course's running matrix
C = [ 2 0  0;
     -6 2 -3;
     -6 0 -1];
b = [2; -11; -9];

fprintf('car C / rank C = %d\n', rank(C));   % 3
disp('C^-1 ='); disp(inv(C));                % [0.5 0 0; -3 0.5 -1.5; -3 0 -1]
x = C \ b;                                   % eliminacao de Gauss, sem calcular a inversa
disp('x ='); disp(x');                       % [1 2 3]
disp('verificacao / check C x - b ='); disp(round(1e12*(C*x - b)')/1e12);

% Confere com os slides / matches the slides
ok = rank(C) == 3 && norm(inv(C) - [0.5 0 0; -3 0.5 -1.5; -3 0 -1]) < 1e-12 && norm(x - [1; 2; 3]) < 1e-12;
if ok, s = 'sim / yes'; else, s = 'NAO / NO'; end
fprintf('confere com os slides / matches the slides: %s\n', s);
