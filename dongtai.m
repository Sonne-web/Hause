clear all;
clc
% 设置初始空位罚分和中途空位罚分
kill_org = -10;
kill_mid = -2;

% 罚分格式：score('A','S')

% 读取蛋白质序列

seq=fastaread('seq1.txt');  % 地址
% 输出结果类似列表
% seq(1).Header  ???调用

row=length(seq(1).Sequence);
col=length(seq(2).Sequence);

Maxtrix_score=zeros(row,col);

% 记录路径 1,右下100；2，下010；3，右001
weg =cell(row,col);
weg{1,1}=[];

% 初始化第一行第一列
for i=2:row
    Maxtrix_score(i,1)=(i-1)*kill_org;
    weg{1,i}=[weg{1,i-1} ; 0,0,1];
end
for j=2:col
    Maxtrix_score(1,j)=(j-1)*kill_org;
    weg{j,1}=[weg{j-1,1} ; 0,1,0];
end



% 动态规划打分
for i=2:row
    for j=2:col
        index=0;
        con_1 = Maxtrix_score(i-1,j-1) + score(seq(1).Sequence(i-1),seq(2).Sequence(j-1));
        con_2 = Maxtrix_score(i,j-1) + kill_mid;
        con_3 = Maxtrix_score(i-1,j) + kill_mid;
        [Maxtrix_score(i,j),index] = max([con_1;con_2;con_3]);
        if index==[2,3]
            weg{i,j}=[weg{i-1,j};0,1,0];
        else
            weg{i,j}=[weg{i-1,j-1};1,0,0];
        end
    end
end


y=[0,0;1,1];


for i=2:length(weg{row,col}(:,1))
    if weg{row,col}(i,1)== true
    y=[y;y(i-1,:)+[1,1]];
    elseif weg{row,col}(i,2)== true
    y=[y;y(i-1,:)+[0,1]];
    else
    y=[y:y(i-1,:)+[1,0]];
    end
end


subplot(2,1,1);
h = heatmap(Maxtrix_score(2:end,2:end));
h.ColorLimits = [-10,16];
h.Colormap = cool;

subplot(2,1,2);
plot(y(:,1),y(:,2),'r')
hold on 
plot(y(:,1),y(:,2),'*')


















