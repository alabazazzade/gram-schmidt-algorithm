A = input('Matrix:');
%q=[];
name=size(A);
n=name(2); %number of coulems
z=name(1);
mat=zeros(n,z);
q=zeros(n,z);
i=1;
q(:,i)= A(:,1)/norm(A(:,1));
mat(:,1)=A(:,1)/norm(A(:,1));
%q(:,i)=A(:,1)/norm(A(:,1));
%q(i+1)=(A(:,2)-(q1.' * A(:,2) *q1))/norm(A(:,(i+1)));
m=n-1;
for i=2:m 
    B1=A(:,i);
    B2=A(:,(i+1));
%     q(:,i)=(B1-(q(:,i-1)' * B1 * q(:,i-1)))/norm(B2);
    q=(B1-(q(:,i-1)' * B1 * q(:,i-1)))/norm(B2);
    mat(:,i)=q;

end


