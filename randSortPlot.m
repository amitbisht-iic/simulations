clear;
function f=quicksort(v)
    f= v; n=length(v);
    if(n > 1)
        vl = min(f); vh = max(f);
        p  = (vl+vh)*0.5;
        ia = find(f< p); ib = find(f== p); ic=find(f> p);
        f = [quicksort(f(ia)); f(ib); quicksort(f(ic))];

    end
end

N=[100,10000,100000,5000000];
for i=[1:4]
    v=rand(N(i),1);
    u=quicksort(v);
    figure(i);
    hist(u,10)
    xlabel(N(i))
    title("Random Number Distribution")
end