function I = Convert2Image(X, RGBs, len)
    M = numel(X);
    [N, K] = size(X{1});
    I = uint8(zeros(N*len, M*K, 3));
    %[RGBs] = select_color(K);
    assert(size(RGBs,1) == K);
    for i = 1:M
       assert(all([N,K] == size(X{i})));
       RR = i * K;
       LL = RR - K + 1;
       for j = 1:N
           [~,id] = max(X{i}(j,:));
           R = j * len; L = R - len + 1;
           rgb = reshape(RGBs(id,:), 1, 1, 3);
           I(L:R,LL:RR,:) = repmat(rgb, R-L+1, RR-LL+1, 1);
       end
    end

end
