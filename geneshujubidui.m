
clear all;
clc

seq1='HSNGPTDLSMKGGASTTSTTPTPTPSSTS';
seq2='PASLPPSSPAAPIATFSLLPAGGAPTVFS';

A=zeros(length(seq1),length(seq2));

for i=1:length(seq1)
    for j=1:length(seq2)
        if (seq1(i) == seq2(j)) 
            A(i,j)=1;
        end
    end
end


imagesc(A);



xlabel("seq2");
ylabel("seq1");








