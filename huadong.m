
clear all;
clc

sp_P08318='MSLQFIGLQRRDVVALVNFLRHLTQKPDVDLEAHPKILKKCGEKRLHRRTVLFNELMLWLGYYRELRFHNPDLSSVLEEFEVRCVAVARRGYTYPFGDRGKARDHLAVLDRTEFDTDVRHDAEIVERALVSAVILAKMSVRETLVTAIGQTEPIAFVHLKDTEVQRIEENLEGVRRNMFCVKPLDLNLDRHANTALVNAVNKLVYTGRLIMNVRRSWEELERKCLARIQERCKLLVKELRMCLSFDSNYCRNILKHAVENGDSADTLLELLIEDFDIYVDSFPQSAHTFLGARSPSLEFDDDANLLSLGGGSAFSSVPKKHVPTQPLDGWSWIASPWKGHKPFRFEAHGSLAPAAEAHAARSAAVGYYDEEEKRRERQKRVDDEVVQREKQQLKAWEERQQNLQQRQQQPPPPARKPSASRRLFGSSADEDDDDDDDEKNIFTPIKKPGTSGKGAASGGGVSSIFSGLLSSGSQKPTSGPLNIPQQQQRHAAFSLVSPQVTKASPGRVRRDSAWDVRPLTETRGDLFSGDEDSDSSDGYPPNRQDPRFTDTLVDITDTETSAKPPVTTAYKFEQPTLTFGAGVNVPAGAGAAILTPTPVNPSTAPAPAPTPTFAGTQTPVNGNSPWAPTAPLPGDMNPANWPRERAWALKNPHLAYNPFRMPTTSTASQNTVSTTPRRPSTPRAAVTQTASRDAADEVWALRDQTAESPVEDSEEEDDDSSDTGSVVSLGHTTPSSDYNNDVISPPSQTPEQSTPSRIRKAKLSSPMTTTSTSQKPVLGKRVATPHASARAQTVTSTPVQGRLEKQVSGTPSTVPATLLQPQPASSKTTSSRNVTSGAGTSSASSARQPSASASVLSPTEDDVVSPATSPLSMLSSASPSPAKSAPPSPVKGRGSRVGVPSLKPTLGGKAVVGRPPSVPVSGSAPGRLSGSSRAASTTPTYPAVTTVYPPSSTAKSSVSNAPPVASPSILKPGASAALQSRRSTGTAAVGSPVKSTTGMKTVAFDLSSPQKSGTGPQPGSAGMGGAKTPSDAVQNILQKIEKIKNTEE';

sp_P09217='MSLQFIGLQRRDVVALVNFLRHLTQKPDVDLEAHPKILKKCGEKRLHRRTVLFNELMLWLGYYRELRFHNPDLSSVLEEFEVRCVAVARRGYTYPFGDRGKARDHLAVLDRTEFDTDVRHDAEIVERALVSAVILAKMSVRETLVTAIGQTEPIAFVHLKDTEVQRIEENLEGVRRNMFCVKPLDLNLDRHANTALVNAVNKLVYTGRLIMNVRRSWEELERKCLARIQERCKLLVKELRMCLSFDSNYCRNILKHAVENGDSADTLLELLIEDFDIYVDSFPQSAHTFLGARSPSLEFDDDANLLSLGGGSAFSSVPKKHVPTQPLDGWSWIASPWKGHKPFRFEAHGSLAPAAEAHAARSAAVGYYDEEEKRRERQKRVDDEVVQREKQQLKAWEERQQNLQQRQQQPPPPARKPSASRRLFGSSADEDDDDDDDEKNIFTPIKKPGTSGKGAASGGGVSSIFSGLLSSGSQKPTSGPLNIPQQQQRHAAFSLVSPQVTKASPGRVRRDSAWDVRPLTETRGDLFSGDEDSDSSDGYPPNRQDPRFTDTLVDITDTETSAKPPVTTAYKFEQPTLTFGAGVNVPAGAGAAILTPTPVNPSTAPAPAPTPTFAGTQTPVNGNSPWAPTAPLPGDMNPANWPRERAWALKNPHLAYNPFRMPTTSTASQNTVSTTPRRPSTPRAAVTQTASRDAADEVWALRDQTAESPVEDSEEEDDDSSDTGSVVSLGHTTPSSDYNNDVISPPSQTPEQSTPSRIRKAKLSSPMTTTSTSQKPVLGKRVATPHASARAQTVTSTPVQGRLEKQVSGTPSTVPATLLQPQPASSKTTSSRNVTSGAGTSSASSARQPSASASVLSPTEDDVVSPATSPLSMLSSASPSPAKSAPPSPVKGRGSRVGVPSLKPTLGGKAVVGRPPSVPVSGSAPGRLSGSSRAASTTPTYPAVTTVYPPSSTAKSSVSNAPPVASPSILKPGASAALQSRRSTGTAAVGSPVKSTTGMKTVAFDLSSPQKSGTGPQPGSAGMGGAKTPSDAVQNILQKIEKIKNTEE';

if  length(sp_P09217)==length(sp_P08318)
    disp("长度相等")
end


row=sp_P08318;
col=sp_P09217;

Output=zeros(length(row),length(col));

for i=1:(length(row)-2)
    for j=1:(length(col)-2)
        m=0;
        for k=0:2
            if row(i+k)==col(j+k)
                m=m+1;
            end
        end
        if m==3
            Output(i,j)=1;
        end
    end
end

X=[];Y=[];

for k=1:length(row)
    for p=1:length(col)
        if Output(k,p)==1
            X=[X,k];
            Y=[Y,p];
        end
    end
end


disp(Output)

subplot(2,1,1),imagesc(Output);

subplot(2,1,2),plot(X,Y,"r.");
axis([0,1046,0,1046]);








