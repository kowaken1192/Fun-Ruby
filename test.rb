# 自分の得意な言語で
# Let's チャレンジ！！
# 滞在時間中に流れてくる皿の数 T を入力から受け取る
T = gets.to_i

# 流れてくるネタのリストを入力から受け取る
neta_list = []
T.times do
  neta_list << gets.chomp
end

# 食べられるメロンの数を計算
melon_count = 0
time_since_last_melon = 10 # 最初のメロンを取るまでの時間を考慮するため、初期値を10に設定

neta_list.each do |neta|
  if neta == "melon" && time_since_last_melon >= 10
    melon_count += 1
    time_since_last_melon = 0 # メロンを食べ始めたのでタイマーをリセット
  else
    time_since_last_melon += 1 # メロン以外のネタまたはメロンを食べられない時は時間をインクリメント
  end
end

# 食べられるメロンの数を出力
puts melon_count
