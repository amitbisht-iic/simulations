n=[1000,4000,6000];
count=zeros(1,3);
for j=1:length(n)
	u=randi(6,n(j),1);
	v=randi(6,n(j),1);
	result=u.+v;
	for i=1:n(j)
		if (result(i,1)==5)
			count(j)=count(j)+1;
		end
	end
end
for k=1:length(n)
	fprintf('%d \t %d \t %d\n',n(k),count(k),count(k)/n(k))
end