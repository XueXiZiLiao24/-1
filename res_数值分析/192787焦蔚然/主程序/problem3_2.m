clc;clear;
n=input('�������n=');   %�Զ���������
H=zeros(n,n);   %0��������
for i=1:n   %����ÿ��hij
    for j=1:n
        H(i,j)=1/(i+j-1);
    end
end
H1=inv(H);   %����H����
S=zeros(n,1);
S1=zeros(n,1);
for m=1:n
    S(m,1)=0;
    S1(m,1)=0;
end
for i=1:n
    for j=1:n
        S(i,1)=S(i,1)+abs(H(i,j));   %�洢H�к�
        S1(i,1)=S1(i,1)+abs(H1(i,j));   %�洢H��H1�к�
    end
end
A=max(S)*max(S1);   %��cond
fprintf('%d��Hilbert����������������Ϊ%f\n',n,A);