%EulerLoerenz.m
sig=10; b=8/3; r=20;
t(1)=0.0;
x(1)=0.1;y(1)=0.1;z(1)=0.1;
dt=0.005;
nn=10000;
for k=1:nn
	fx=sig*(y(k)-x(k));
	fy=-x(k)*z(k)+r*x(k)-y(k);
	fz=x(k)*y(k)-b*z(k);
	x(k+1)=x(k)+dt*fx;
	y(k+1)=y(k)+dt*fy;
	z(k+1)=z(k)+dt*fz;
	t(k+1)=t(k)+dt;
end
plot3(x,y,z);
title('CFB');
xlabel('x');ylabel('x');zlable('z');