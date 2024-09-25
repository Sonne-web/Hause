function output = score(i,j)


% 20种标准氨基酸的单字母缩写：
% A: Alanine (Ala)
% R: Arginine (Arg)
% N: Asparagine (Asn)
% D: Aspartic acid (Asp)
% C: Cysteine (Cys)
% Q: Glutamine (Gln)
% E: Glutamic acid (Glu)
% G: Glycine (Gly)
% H: Histidine (His)
% I: Isoleucine (Ile)
% L: Leucine (Leu)
% K: Lysine (Lys)
% M: Methionine (Met)
% F: Phenylalanine (Phe)
% P: Proline (Pro)
% S: Serine (Ser)
% T: Threonine (Thr)
% W: Tryptophan (Trp)
% Y: Tyrosine (Tyr)
% V: Valine (Val)

% 字母转换为坐标
a= 'ARNDCQEGHILKMFPSTWYV';
    % i='A';j='S';
I=find(a == i);
J=find(a == j);
    % disp(I) disp(J)

% 调用 BLOSUM62 矩阵
B62 = blosum(62);

% 赋值
output=B62(I,J);


    % 显示 BLOSUM62 矩阵
    % disp(B62);

end

