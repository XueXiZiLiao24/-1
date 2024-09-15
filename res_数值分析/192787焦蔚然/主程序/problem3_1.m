clc;clear;
n=input('矩阵阶数n=');   %自定义矩阵阶数
H=zeros(n,n);   %0矩阵数组
for i=1:n   %计算每个hij
    for j=1:n
        H(i,j)=1/(i+j-1);
    end
end
S=zeros(n,1);   %定义0数组S存储行和
for m=1:n
    S(m,1)=0;
end
for i=1:n
    for j=1:n
        S(i,1)=S(i,1)+abs(H(i,j));
    end
end
A=max(S);   %S的最大值即为该阶无穷范数
fprintf('%d阶Hilbert矩阵的无穷范数为%.8f\n',n,A);