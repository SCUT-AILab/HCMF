function [RGBs] = select_color(num)
    A = ceil(num^(1/3));
    B = ceil(sqrt(num/A));
    C = ceil(num / A / B);
    A = ceil((1:A) * 255 / A);
    assert(all(A<=255) && all(A>=1));
    B = ceil((1:B) * 255 / B);
    C = ceil((1:C) * 255 / C);
    RGBs = [];
    for i = 1:numel(A)
        for j = 1:numel(B)
            for k = 1:numel(C)
                RGBs = [RGBs; [A(i), B(j), C(k)]];
            end
        end
    end
    RGBs = uint8(RGBs(randperm(size(RGBs,1),num), :));
end