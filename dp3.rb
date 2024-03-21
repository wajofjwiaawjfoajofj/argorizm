n,x,a,y,b=gets.split().map(&:to_i)
s=[10000000]*(1000+y) #要素数を多めに用意しておく必要がある
s[0]=0
s[x]=a
for i in (x..1000+y-1)
    s[i]=[s[i],s[i-x]+a].min()
    if i>=y
        s[i]=[s[i],s[i-y]+b].min()
    end
end
puts s[n..1000+y-1].min()