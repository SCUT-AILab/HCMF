N = 10;
M = 3;
K = 3;
error_ratio = 0.30;
pix_len = 5;
[GT, ER] = generate(N, M, K, error_ratio);
%I = Convert2Image(ER, 5);
ER = ER(2:end);
GT = GT(2:end);
ER{1} = GT{1};
ER{2} = GT{1};
L = [];
for i = 1:numel(ER)
    L = [L, ER{i}];
end
p  = 1.01;
mu = 1;
max_iters = 200;
[X] = SolverSFEC(L, numel(ER), K, p, mu, max_iters);
beta = 5;
max_iters = 300;
%RCEC = SolverRCEC(L, numel(ER), K, beta, max_iters);
Recover = cell(numel(ER), 1);
%RCEC_C  = cell(numel(ER), 1);
for i = 1:numel(ER)
    Y = X(:,i*K-K+1:i*K);
    %Y = real(Y > 0.5);
    Recover{i} = Y;
    %RCEC_C{i} = RCEC(:,i*K-K+1:i*K);
end
RGBs = select_color(K);
RI = Convert2Image(Recover, RGBs, pix_len);
EI = Convert2Image(ER, RGBs, pix_len);
GI = Convert2Image(GT, RGBs, pix_len);
%GaoI = Convert2Image(RCEC_C, RGBs, pix_len);
gap = uint8(zeros(N*pix_len,20,3)+255);
%imshow([GI,gap,EI,gap,RI,gap,GaoI]);
imshow([GI,gap,EI,gap,RI]);
% saveas(gcf,'recover','epsc');