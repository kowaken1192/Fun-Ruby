#０からn未満の和
n = gets.chomp.to_i
ans = 0
for i in 0...n
  ans += i
end
puts ans

#0からnまでの和
n = gets.chomp.to_i
test = 0
for i in 0..n
  test += i
end
puts test
