clc;clear;
syms x;   %�������Ŷ���x
y3=log((1+x)/(1-x));   %����y3=ln((1+x)/(1-x))
N=input('������N:');   %����taylor��N��չ��
S=taylor(y3,x,0,'Order',N);   %y2�ڵ㴦������N��̩��չ��
dif=abs(y3-S);   %�Ժ���y2��չ��ʽS���ֵ��ȡ����ֵ
data3=zeros(1,10000);   %��������data�洢��ֵ
n=1;
for z=-1/3:0.001:1/3   %����x��[-0.5,0.5]����Ϊ0.001ʱ�����
 answer=subs(dif,x,z);
 answer=single(answer);
 data3(n)=answer; 
 n=n+1;
end
result=max(data3);   %��̩��չ����������ֵ
fprintf('result=%f\n',result);   %���
S3=subs(S,x,1/3);   %����1/3��̩��չ����ֵ
fprintf('S(1/3)=%f\n',S3);   %���
e3=subs(dif,x,1/3);   %����1/3�����Ĵ�С
fprintf('e1=%f\n',e3);   %���