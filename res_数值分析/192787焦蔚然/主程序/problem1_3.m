clc;clear;
syms x;   %创建符号对象x
y3=log((1+x)/(1-x));   %函数y3=ln((1+x)/(1-x))
N=input('请输入N:');   %进行taylor的N阶展开
S=taylor(y3,x,0,'Order',N);   %y2在点处，进行N阶泰勒展开
dif=abs(y3-S);   %对函数y2和展开式S求差值并取绝对值
data3=zeros(1,10000);   %定义数组data存储差值
n=1;
for z=-1/3:0.001:1/3   %计算x在[-0.5,0.5]精度为0.001时的误差
 answer=subs(dif,x,z);
 answer=single(answer);
 data3(n)=answer; 
 n=n+1;
end
result=max(data3);   %求泰勒展开的误差最大值
fprintf('result=%f\n',result);   %输出
S3=subs(S,x,1/3);   %求在1/3处泰勒展开的值
fprintf('S(1/3)=%f\n',S3);   %输出
e3=subs(dif,x,1/3);   %求在1/3处误差的大小
fprintf('e1=%f\n',e3);   %输出