s=[0]*45
s[0]=1
n,a,b=gets.split().map(&:to_i)
for i in (1..40)
    if i>=a 
        s[i]+=s[i-a] #iが1..a-1の時にこの式は成り立たない。bも同様。
    end
    if i>=b
        s[i]+=s[i-b]
    end
end

puts s[n]
