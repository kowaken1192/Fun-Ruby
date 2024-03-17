#ナ・リーグのMVP投票
# 記者の変数
writer = gets.to_i

# 名前と投票数を格納するハッシュマップ
votes = Hash.new(0)

# N回のループで各投票を処理
writer.times do
  most_value_player = gets.chomp
  votes[most_value_player] += 1
end

# 最も得票数が多い人の名前を見つけて出力
# max_byメソッドはそのメソッドの最大値を評価するメソッドになる
max_votes = votes.max_by { |key, value| value }
puts "今年のMVPは#{max_votes[0]}です"

#ア・リーグのMVP投票
# 記者の変数
writer = gets.to_i

# 名前と投票数を格納するハッシュマップ
votes = Hash.new(0)

# N回のループで各投票を処理
writer.times do
  most_value_player = gets.chomp
  votes[most_value_player] += 1
end

# 最も得票数が多い人の名前を見つけて出力
# max_byメソッドはそのメソッドの最大値を評価するメソッドになる
max_votes = votes.max_by { |key, value| value }
puts "今年のMVPは#{max_votes[0]}です"

total_sum = 0
for N in range(1, 601):  # N goes from 1 to 600
    quotient, remainder = divmod(77777, N)
    total_sum += quotient + remainder

total_sum
