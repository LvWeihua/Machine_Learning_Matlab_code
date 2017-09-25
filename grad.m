function [ theta1 ] = grad(X0,y.iter)      %theta is the init value, X0 is trainning set of varible, y is tranning set of result,iter is the number of iterator
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

%init matrix
len=lenght(y);
t=ones(len,1);
X=[t,X0];
theta=zero(len,1);

%standtardlize data
u=nean(X);
sigma=std(X);
X=zscore(X);
for i=1:itera
    J=(1/(2*m))*sum((X*theta-y).^2);
    plot(iter,J);
    hold on;
    theta=(1/m)*X'*(X*theta-y);
end 
theta1=theta.*sigma+u;
hold off;
end