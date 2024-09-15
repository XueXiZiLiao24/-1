clc;clear;
n=input('矩阵阶数n=');   %自定义矩阵阶数
H=zeros(n,n);   %0矩阵数组
for i=1:n   %计算每个hij
    for j=1:n
        H(i,j)=1/(i+j-1);
    end
end
H1=inv(H);   %矩阵H求逆
S=zeros(n,1);
S1=zeros(n,1);
for m=1:n
    S(m,1)=0;
    S1(m,1)=0;
end
for i=1:n
    for j=1:n
        S(i,1)=S(i,1)+abs(H(i,j));   %存储H行和
        S1(i,1)=S1(i,1)+abs(H1(i,j));   %存储H逆H1行和
    end
end
A=max(S)*max(S1);   %求cond
fprintf('%d阶Hilbert矩阵的无穷范数条件数为%f\n',n,A);