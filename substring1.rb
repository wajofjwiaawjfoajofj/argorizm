w,b=gets.split.map(&:to_i)
while true
  if w-7>=0 && b-5>=0
    w=w-7
    b=b-5
  else
    break
  end
end
s="wbwbwwbwbwbwwbwbwwbwbwbw"
s=s.split("")
a=[]
for i in (0..23)
  for j in (i..23)
    wc=s[i..j].count("w")
    bc=s[i..j].count("b")
    a.push([wc,bc])
  end
end
k=0
for c in a
  if [w,b] == c
    k+=1
    break
  end
end
if k==1
  puts "Yes"
else
  puts "No"
end
