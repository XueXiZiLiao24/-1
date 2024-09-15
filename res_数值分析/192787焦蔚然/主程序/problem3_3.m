clc;clear;
n=zeros(10,1);
x=zeros(10,1);
y=zeros(10,1);
for i=1:10
    n(i,1)=10*i;   %Çó10,20,¡­,100µÄcond
    x(i,1)=inf_cond(n(i,1));
    y(i,1)=log(x(i,1));
end
plot(x, y, 'r+');   %»­Í¼
grid on;