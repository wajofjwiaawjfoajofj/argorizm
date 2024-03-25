x,y,n=gets.split.map(&:to_i)
s=[]
105.times do
    s.push([0,0]) #[x,y]
end
roll={"E"=>"S","S"=>"W","W"=>"N","N"=>"E"}
a=[]
k=0
for i in (1..30)
    k+=i
    a.push(k)
    k+=i
    a.push(k)
end
d="E"
for i in (1..100)
    if d=="E"
        s[i][0]=s[i-1][0]+1
        s[i][1]=s[i-1][1]
        
    elsif d=="S"
        s[i][0]=s[i-1][0]
        s[i][1]=s[i-1][1]+1
        
    elsif d=="W"
        s[i][0]=s[i-1][0]-1
        s[i][1]=s[i-1][1]
        
    else
        s[i][0]=s[i-1][0]
        s[i][1]=s[i-1][1]-1
    end
    if a.include?(i)
        d=roll[d]
    end
end

puts "#{s[n][0]+x} #{s[n][1]+y}"