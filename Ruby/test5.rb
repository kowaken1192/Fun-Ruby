s = gets.chomp

while s.length > 0
  puts s.slice!(0, 10)
end

#slice!(start, length)
