clc;clear;
x0=input('������ֵx0=');
t0=ex_rof(x0);   %�������ֵ��Ӧ��ֵ
h=0.001;   %�޸ļ��㾫��
i=1;j=1;
p=1;q=1;
tmax=t0;tmin=t0;
if(t0<0)   %����1�ڸ�
    while(ex_rof(tmax)==t0)
        tmax=t0+h*i;
        i=i+1;
    end
    fprintf('f(x)=0�ĸ�Ϊ%.8f\n',t0);
    fprintf('��������Ϊ(-inf,%.3f)\n',tmax);
else   %����3�ڸ�
    if(t0>1)
    while(ex_rof(tmin)==t0)
        tmin=t0-h*j;
        j=j+1;
    end
    fprintf('f(x)=0�ĸ�Ϊ%.7f\n',t0);
    fprintf('��������Ϊ(%.3f,inf)\n',tmin);
    else   %����2�ڸ�
        while(ex_rof(tmin)==t0)
            tmin=t0-p*h;
            p=p+1;
        end
        while(ex_rof(tmax)==t0)
            tmax=t0+q*h;
            q=q+1;
        end
        fprintf('f(x)=0�ĸ�Ϊ%.8f\n',t0);
        fprintf('��������Ϊ(%.3f,%.3f)\n',tmin,tmax);
    end
end