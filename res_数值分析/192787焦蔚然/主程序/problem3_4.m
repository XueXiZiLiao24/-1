clc;clear;
n=input('�������n=');   %�Զ���������
H=zeros(n,n);   %0��������
for i=1:n   %����ÿ��hij
    for j=1:n
        H(i,j)=1/(i+j-1);
    end
end
x=zeros(n,1);
for m=1:n
    x(m,1)=1;
end
b=H*x;   %���
x0=H\b;
c1=x-x0;
c2=b-H*x0;
c11=max(abs(c1));
c22=max(abs(c2));
