clc;clear;
n=zeros(10,1);
x=zeros(10,1);
y=zeros(10,1);
for i=1:10
    n(i,1)=10*i;   %��10,20,��,100��cond
    x(i,1)=inf_cond(n(i,1));
    y(i,1)=log(x(i,1));
end
plot(x, y, 'r+');   %��ͼ
grid on;