function [GT, ER] = generate(N, M, K, error_ratio)
X = rand(N,K);
Y = max(X, [], 2);
X = X == repmat(Y, 1, K);
FinalX = cell(M+1, 1);
FinalX{1} = X;
for index = 1:M
    idx = randperm(N, ceil(error_ratio*N));
    Y = X;
    for i = 1:numel(idx)
        Y(idx(i),:) = 0;
        Y(idx(i),randperm(K,1)) = 1;
    end
    FinalX{index+1} = Y;
end
ER = FinalX;
GT = cell(M+1, 1);
for i = 1:M+1, GT{i} = X; end
%I = Convert2Image(FinalX,4);
%imshow(I);
end
