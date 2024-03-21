x,d=gets.split().map(&:to_i)
q=gets.to_i
k=[]
q.times do |i|
    k.push(gets.to_i)
end
a=[x]
1000.times do |i| #k.maxでループ処理を行うとエラーを起こす可能性がある為、定数で行うと良い
    a.push(a[i]+d)
end
q.times do |j|
    puts a[k[j].to_i-1]
end
