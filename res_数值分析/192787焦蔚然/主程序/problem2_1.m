clc;clear;
syms x;   %�������Ŷ���x
f=3*x^2-exp(x);   %����f(x)
g=diff(f);   %�󵼵�g(x)
h=0.1;   %����������
x0=0;
flag=0;
data=zeros(1,100);   %����0����data
for i=-100:100
    a=subs(g,x,x0+i*h);   %������˵�ֵ����
    b=subs(g,x,x0+(i+1)*h);   %������˵�ֵ����
    if(a*b<0)   %��һ��һ������洢����
        flag=flag+1;   %��־λ+1
        data(flag)=i;
    else
        flag=flag;   %�������и����䣬�򲻼���
    end
end
fprintf('ʵ������Ϊ%d\n',flag);
disp('����������Ϊ:');
for j=1:flag   %��־λ���Ʊ������������������
    fprintf('[%.1f,%.1f]\n',x0+data(j)*h,x0+(data(j)+1)*h);   %�����data���������
end