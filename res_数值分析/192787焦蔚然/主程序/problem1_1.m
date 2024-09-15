clc;clear;
syms x;   %创建符号对象x
y1=log(1+x);  %函数y1=ln(1+x)
N=input('请输入N:');  %进行taylor的N阶展开
S=taylor(y1,x,0,'Order',N);   %y1在点0处，进行N阶泰勒展开
dif=abs(y1-S);  %对函数y1和展开式S求差值并取绝对值
data=zeros(1,10000);  %定义数组data存储差值
n=1;
for z=0:0.001:1   %计算x在[0,1]精度为0.001时的误差
 answer=subs(dif,x,z);
 answer=single(answer);
 data(n)=answer; 
 n=n+1;
end
result=max(data);    %求泰勒展开的误差最大值
fprintf('result=%f\n',result);    %输出
S1=subs(S,x,1);      %求在1处泰勒展开的值
fprintf('S(1)=%f\n',S1);    %输出
e1=subs(dif,x,1);     %求在1处误差的大小
fprintf('e1=%f\n',e1);    %输出