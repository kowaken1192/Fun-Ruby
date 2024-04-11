# 生徒の数Nを受け取る（この行は実際のコード実行時には不要かもしれませんが、問題のフォーマットに従っています）
n = gets.to_i

# 生徒のスコアを受け取る
students_scores = n.times.map { gets.to_i }

# スコアに基づいて順位を計算
sorted_scores = students_scores.sort.reverse

puts sorted_scores
