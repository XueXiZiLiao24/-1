clc;clear;
n=input('矩阵阶数n=');   %自定义矩阵阶数
H=zeros(n,n);   %0矩阵数组
for i=1:n   %计算每个hij
    for j=1:n
        H(i,j)=1/(i+j-1);
    end
end
x=zeros(n,1);
for m=1:n
    x(m,1)=1;
end
b=H*x;   %求解
x0=H\b;
c1=x-x0;
c2=b-H*x0;
c11=max(abs(c1));
c22=max(abs(c2));
