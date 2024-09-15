clc;clear;
syms x;   %�������Ŷ���x
y2=log(1/(1+x));  %����y2=ln(1/(1+x))
N=input('������N:');  %����taylor��N��չ��
S=taylor(y2,x,0,'Order',N);   %y2�ڵ㴦������N��̩��չ��
dif=abs(y2-S);  %�Ժ���y2��չ��ʽS���ֵ��ȡ����ֵ
data2=zeros(1,10000);  %��������data�洢��ֵ
n=1;
for z=-0.5:0.001:0.5   %����x��[-0.5,0.5]����Ϊ0.001ʱ�����
 answer=subs(dif,x,z);
 answer=single(answer);
 data2(n)=answer; 
 n=n+1;
end
result=max(data2);    %��̩��չ����������ֵ
fprintf('result=%f\n',result);    %���
S2=subs(S,x,-0.5);      %����-0.5��̩��չ����ֵ
fprintf('S(-0.5)=%f\n',S2);    %���
e2=subs(dif,x,-0.5);     %����-0.5�����Ĵ�С
fprintf('e1=%f\n',e2);    %���