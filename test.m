A=importdata('data2.txt');
t=ones(m,1);
A=[t,A];
[m,n]=size(A);
X=A(:,1:n-1);
y=A(:,n);
theta=grad(X,y,50000);