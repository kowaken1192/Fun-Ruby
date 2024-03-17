total_sum = 0
(1..600).each do |n|
  quotient, remainder = 77777.divmod(n)
  total_sum += quotient + remainder
end

puts total_sum
