clc;clear;
x0=input('������ֵx0=');
t0=ex_root(x0);   %�������ֵ��Ӧ��ֵ
h=0.001;   %�޸ļ��㾫��
i=1;j=1;
tmax=t0;tmin=t0;
if(t0<1.5)   %t0<1.5������������˵�
    while(ex_root(tmax)==t0)
        tmax=t0+h*i;
        i=i+1;
    end
    fprintf('g(x)=0�ĸ�Ϊ%.8f\n',t0);
    fprintf('��������Ϊ(-inf %.3f)\n',tmax);
else   %t0>1.5�����������Ҷ˵�
    while(ex_root(tmin)==t0)
        tmin=t0-h*j;
        j=j+1;
    end
    fprintf('g(x)=0�ĸ�Ϊ%.7f\n',t0);
    fprintf('��������Ϊ(%.3f inf)\n',tmin);
end
