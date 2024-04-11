test = ["fruits", "apple", "abc"]
p test.include?('a')

# 競技者の数Nを読み込む
n = gets.to_i
scores = gets.split.map(&:to_i)
total_scores = scores.sort.reverse

# 各競技者のメダルを決定
scores.each_with_index do |score, i|
  puts "インデックス#{i}で #{score}"
end

#sorted_scores = [100, 90, 90, 80]という配列がある場合、sorted_scores.index(90)の呼び出しは1を返します。これは、スコア90が配列内で最初に見つかった位置（インデックスが1）を直接示しています。したがって、この値（1）は既に90の順位を示しており、[0]を追加して配列から値を取り出す必要はありません。

(1..6).each do |n|
  # %は余りを求める書き方
  if n % 3 == 0
    puts "3の倍数です"
  else
    puts "3の倍数ではありません"
  end
end
