clc;clear;
n=input('�������n=');   %�Զ���������
H=zeros(n,n);   %0��������
for i=1:n   %����ÿ��hij
    for j=1:n
        H(i,j)=1/(i+j-1);
    end
end
S=zeros(n,1);   %����0����S�洢�к�
for m=1:n
    S(m,1)=0;
end
for i=1:n
    for j=1:n
        S(i,1)=S(i,1)+abs(H(i,j));
    end
end
A=max(S);   %S�����ֵ��Ϊ�ý������
fprintf('%d��Hilbert����������Ϊ%.8f\n',n,A);