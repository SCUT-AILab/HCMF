function [X, aY, GT, ER] = generate(X, N, M, K, error_ratio)
  %X = rand(N, K);
  [tY, aY] = max(X, [], 2);
  X = X == repmat(tY, 1, K);
  FinalX = cell(M, 1);
  for index = 1:M
    idx = randperm(N, ceil(error_ratio*N));
    Y = X;
    for i = 1:numel(idx)
        Y(idx(i),:) = 0;
        Y(idx(i),randperm(K,1)) = 1;
    end
    FinalX{index} = Y;
  end
  ER = FinalX;
  GT = cell(M, 1);
  for i = 1:M, GT{i} = X; end
end
