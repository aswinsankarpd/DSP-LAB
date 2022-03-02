clc;clf;clear;
x=input("Enter a sequence");
N=input("Which point");
for k=0:N-1
    sum=0;
    for n=0:N-1
        sum=sum+x(n+1)*exp(-1*sqrt(-1)*2*%pi*(1/N)*k*n);
    end
    X(k+1)=round(sum);
end
disp(X);
