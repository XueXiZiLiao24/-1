clc;clear;
syms x;   %创建符号对象x
f=3*x^2-exp(x);   %方程f(x)
g=diff(f);   %求导得g(x)
h=0.1;   %调整区间宽度
x0=0;
flag=0;
data=zeros(1,100);   %定义0数组data
for i=-100:100
    a=subs(g,x,x0+i*h);   %左区间端点值计算
    b=subs(g,x,x0+(i+1)*h);   %右区间端点值计算
    if(a*b<0)   %若一正一负，则存储数据
        flag=flag+1;   %标志位+1
        data(flag)=i;
    else
        flag=flag;   %若不是有根区间，则不计数
    end
end
fprintf('实根个数为%d\n',flag);
disp('根所在区间为:');
for j=1:flag   %标志位控制遍历次数，即区间个数
    fprintf('[%.1f,%.1f]\n',x0+data(j)*h,x0+(data(j)+1)*h);   %输出由data推算的区间
end