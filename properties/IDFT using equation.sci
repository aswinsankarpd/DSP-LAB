clc;clf;clear;
x=input("Enter a sequence");
N=input("Which point");
for n=0:N-1
    sum=0;
    for k=0:N-1
        sum=sum+(x(k+1)*exp(sqrt(-1)*2*%pi*(1/N)*k*n))/N;
    end
    X(n+1)=sum;
end
disp(X);
                                         ARBI 