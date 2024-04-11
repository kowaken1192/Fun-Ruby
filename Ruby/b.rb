scores = [100, 80, 90, 70, 85]
total_scores = scores.sort.reverse

# 各競技者のメダルを決定
total_scores.each_with_index do |score, i|

  # 順位に応じてメダルを割り当て
  if i == 0
    puts "G" # 金メダル
  elsif i == 1
    puts "S" # 銀メダル
  elsif i == 2
    puts "B" # 銅メダル
  else
    puts "N" # メダルなし
  end
end
