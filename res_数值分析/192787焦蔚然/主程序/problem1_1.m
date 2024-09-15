clc;clear;
syms x;   %�������Ŷ���x
y1=log(1+x);  %����y1=ln(1+x)
N=input('������N:');  %����taylor��N��չ��
S=taylor(y1,x,0,'Order',N);   %y1�ڵ�0��������N��̩��չ��
dif=abs(y1-S);  %�Ժ���y1��չ��ʽS���ֵ��ȡ����ֵ
data=zeros(1,10000);  %��������data�洢��ֵ
n=1;
for z=0:0.001:1   %����x��[0,1]����Ϊ0.001ʱ�����
 answer=subs(dif,x,z);
 answer=single(answer);
 data(n)=answer; 
 n=n+1;
end
result=max(data);    %��̩��չ����������ֵ
fprintf('result=%f\n',result);    %���
S1=subs(S,x,1);      %����1��̩��չ����ֵ
fprintf('S(1)=%f\n',S1);    %���
e1=subs(dif,x,1);     %����1�����Ĵ�С
fprintf('e1=%f\n',e1);    %���