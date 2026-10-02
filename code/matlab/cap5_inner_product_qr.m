% Cap. 5 / Ch. 5 - produto interno e QR / inner product and QR
% Reproduz o slide "Algebra Linear no computador" (deck 05_1). Para ver, nao para exame.
u = [1 2 -1]; v = [3 0 2];
fprintf('u . v = %g\n', dot(u, v));          % 1
fprintf('||(1,2,-2)|| = %g\n', norm([1 2 -2]));   % 3
A = [3 2;
     1 2];                                   % colunas (3,1) e (2,2)
[Q, R] = qr(A);
disp('Q ='); disp(Q);                        % colunas +-(3,1)/sqrt(10), +-(-1,3)/sqrt(10)
disp('R ='); disp(R);
disp('Q''*Q ='); disp(Q'*Q);                 % identidade
e1 = [1 1 0]/sqrt(2); e2 = [0 0 1]; w = [3 1 2];
p = dot(w, e1)*e1 + dot(w, e2)*e2;           % projecao sobre V = L{(1,1,0),(0,0,1)}
disp('proj_V (3,1,2) ='); disp(p);           % (2,2,2)
