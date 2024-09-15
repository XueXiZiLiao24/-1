clc;clear;
syms x;   %创建符号对象x
y2=log(1/(1+x));  %函数y2=ln(1/(1+x))
N=input('请输入N:');  %进行taylor的N阶展开
S=taylor(y2,x,0,'Order',N);   %y2在点处，进行N阶泰勒展开
dif=abs(y2-S);  %对函数y2和展开式S求差值并取绝对值
data2=zeros(1,10000);  %定义数组data存储差值
n=1;
for z=-0.5:0.001:0.5   %计算x在[-0.5,0.5]精度为0.001时的误差
 answer=subs(dif,x,z);
 answer=single(answer);
 data2(n)=answer; 
 n=n+1;
end
result=max(data2);    %求泰勒展开的误差最大值
fprintf('result=%f\n',result);    %输出
S2=subs(S,x,-0.5);      %求在-0.5处泰勒展开的值
fprintf('S(-0.5)=%f\n',S2);    %输出
e2=subs(dif,x,-0.5);     %求在-0.5处误差的大小
fprintf('e1=%f\n',e2);    %输出