# 最初の2つの数を配列に設定
sequence = [1, 2]

# 3番目の数から38番目の数までを計算
(3..38).each do |i|
  sequence << sequence[-1] + sequence[-2] - 1
end

# 38番目の数を表示
puts sequence[38 - 1]


# 親カードの情報を受け取る
a, b = gets.split.map(&:to_i)

# 子カードの枚数を受け取る
n = gets.to_i

# 子カードの情報を受け取り、強弱関係を判断する
n.times do
  A_i, B_i = gets.split.map(&:to_i)

  # 親カードと子カードの強弱を比較
  if A_i > a || (A_i == a && B_i < b)
    puts "Low"
  else
    puts "High"
  end
end
