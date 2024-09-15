function [ans]=ex_root(x0)
syms x
f=3*x^2-exp(x);   %方程f(x)
g=diff(f);   %求导得g(x)
g1=diff(g);   %求导得g1(x)
y=x-g/g1;
t1=x0;
t2=double(subs(y,x,x0));
m=0.5e-8;   %有效位设定
while(abs(t2-t1)>m)   %循环求解，直到满足有效位要求
    t1=t2;
    t2=double(subs(y,x,t1));
end
ans=t2;   %存储函数计算结果
end
