n = gets.to_i

m = 1_000_003
pow = 2
ans = 1

while 0 < n
  ans = ans * pow % m if n & 1 == 1
  pow = pow * pow % m
  n >>= 1
end

puts ans