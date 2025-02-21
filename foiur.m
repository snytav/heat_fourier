clear all
clc

syms x t a n L


N = [n, n+2]; %Vector with n and n+2
A_N = ((tan(x)).^N);%Integrant of a_n
a_n = int(A_N,x,0,pi/4);%Integral term a_n


s = (1/n)*(a_n(1) + a_n(2));%General term of the series

S = symsum(s,n,1,inf);

syms X(x,n);
syms T(t,n);
syms u(x,t);

u(x,t) = symsum(X(x,n)*T(t,n),n,1,inf);


% IC
f(x) = x^2;

b_n  = {};
c_n  = {};


b_n = 2/L*int(f(x),sin(n*pi*x/L),x,0,L);
c_n = 2/L*int(f(x),cos(n*pi*x/L),x,0,L);
%Integral term a_n
%a_n = int(A_N,x,0,pi/4);%Integral term a_n
qq = 0;


