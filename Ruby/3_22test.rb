input_scores = gets.chomp.split(' ')
minimum_score = gets.to_i

exam1_score, exam2_score = input_scores.map(&:to_i)

puts exam1_score
puts exam2_score
