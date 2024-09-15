clc;clear;
x0=input('迭代初值x0=');
t0=ex_root(x0);   %求迭代初值对应的值
h=0.001;   %修改计算精度
i=1;j=1;
tmax=t0;tmin=t0;
if(t0<1.5)   %t0<1.5则收敛区间左端点
    while(ex_root(tmax)==t0)
        tmax=t0+h*i;
        i=i+1;
    end
    fprintf('g(x)=0的根为%.8f\n',t0);
    fprintf('收敛区间为(-inf %.3f)\n',tmax);
else   %t0>1.5则收敛区间右端点
    while(ex_root(tmin)==t0)
        tmin=t0-h*j;
        j=j+1;
    end
    fprintf('g(x)=0的根为%.7f\n',t0);
    fprintf('收敛区间为(%.3f inf)\n',tmin);
end
