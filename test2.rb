# N人の数を入力
n = gets.to_i

# 名前と投票数を格納するハッシュマップ
votes = Hash.new(0)

# N回のループで各投票を処理
n.times do
  name = gets.chomp
  votes[name] += 1
end


# 最も得票数が多い人の名前を見つけて出力
# max_byメソッドはそのメソッドの最大値を評価するメソッドになる
max_votes = votes.max_by { |key, value| value }
puts "今回の候補者は#{max_votes[0]}です"
