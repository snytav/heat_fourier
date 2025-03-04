% https://www.mathworks.com/matlabcentral/answers/548835-infinit-symbolic-series-with-symsum-help

clear all
clc

syms x t a n a_n

N = [n, n+2]; %Vector with n and n+2
A_N = ((tan(x)).^N);%Integrant of a_n
%a_n = int(A_N,x,0,pi/4);%Integral term a_n

%s = (1/n)*(a_n(1) + a_n(2));%General term of the series

S = symsum(a_n*cos(n*x),n,1,inf);

cos_S = symsum(s,n,1,inf);




qq = 0;