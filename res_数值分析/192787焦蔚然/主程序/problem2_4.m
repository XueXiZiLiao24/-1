clc;clear;
x0=input('迭代初值x0=');
t0=ex_rof(x0);   %求迭代初值对应的值
h=0.001;   %修改计算精度
i=1;j=1;
p=1;q=1;
tmax=t0;tmin=t0;
if(t0<0)   %区间1内根
    while(ex_rof(tmax)==t0)
        tmax=t0+h*i;
        i=i+1;
    end
    fprintf('f(x)=0的根为%.8f\n',t0);
    fprintf('收敛区间为(-inf,%.3f)\n',tmax);
else   %区间3内根
    if(t0>1)
    while(ex_rof(tmin)==t0)
        tmin=t0-h*j;
        j=j+1;
    end
    fprintf('f(x)=0的根为%.7f\n',t0);
    fprintf('收敛区间为(%.3f,inf)\n',tmin);
    else   %区间2内根
        while(ex_rof(tmin)==t0)
            tmin=t0-p*h;
            p=p+1;
        end
        while(ex_rof(tmax)==t0)
            tmax=t0+q*h;
            q=q+1;
        end
        fprintf('f(x)=0的根为%.8f\n',t0);
        fprintf('收敛区间为(%.3f,%.3f)\n',tmin,tmax);
    end
end