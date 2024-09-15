function [ans]=ex_rof(x0)
syms x
f=3*x^2-exp(x);   %����f(x)
g=diff(f);   %�󵼵�g(x)
y=x-f/g;
t1=x0;
t2=double(subs(y,x,x0));
m=0.5e-8;   %��Чλ�趨
while(abs(t2-t1)>m)   %ѭ����⣬ֱ��������ЧλҪ��
    t1=t2;
    t2=double(subs(y,x,t1));
end
ans=t2;   %�洢����������
end