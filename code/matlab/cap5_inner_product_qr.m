% Cap. 5 / Ch. 5 - produto interno e QR / inner product and QR
% Reproduz o slide "Algebra Linear no computador" (deck 05_1). Para ver, nao para exame.
% Reproduces the slide "Linear algebra on the computer" (deck 05_1). Not examinable.
% Corre no MATLAB, no MATLAB Online e no GNU Octave.  J. F. A. Madeira - Licenca MIT.

u = [1 2 -1]; v = [3 0 2];
fprintf('u . v = %g\n', dot(u, v));          % 1
fprintf('||(1,2,-2)|| = %g\n', norm([1 2 -2]));   % 3

% Colunas (3,1) e (2,2): Gram-Schmidt escrito com matrizes / Gram-Schmidt in matrix form
A = [3 2;
     1 2];
[Q, R] = qr(A);
disp('Q ='); disp(Q);                        % colunas +-(3,1)/sqrt(10), +-(-1,3)/sqrt(10)
disp('R ='); disp(R);                        % triangular superior / upper triangular
disp('Q''*Q ='); disp(round(1e12*(Q'*Q))/1e12);      % identidade / identity
disp('QR - A ='); disp(round(1e12*(Q*R - A))/1e12);

% Extensao: projecao sobre um subespaco / extension: projection onto a subspace
e1 = [1 1 0]/sqrt(2); e2 = [0 0 1]; w = [3 1 2];
p = dot(w, e1)*e1 + dot(w, e2)*e2;           % V = L{(1,1,0),(0,0,1)}
fprintf('proj_V (3,1,2) = (%g, %g, %g)   resto/remainder: (%g, %g, %g)\n', p, w - p);   % (2,2,2), (1,-1,0)

% Confere com os slides / matches the slides
ok = dot(u, v) == 1 && abs(norm([1 2 -2]) - 3) < 1e-12 && norm(Q'*Q - eye(2)) < 1e-12 ...
     && norm(Q*R - A) < 1e-12 && abs(R(2,1)) < 1e-12 && norm(abs(Q(:,1)) - [3; 1]/sqrt(10)) < 1e-12 ...
     && norm(p - [2 2 2]) < 1e-12;
if ok, s = 'sim / yes'; else, s = 'NAO / NO'; end
fprintf('confere com os slides / matches the slides: %s\n', s);
