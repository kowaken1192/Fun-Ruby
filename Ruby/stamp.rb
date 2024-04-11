
#205円切手が30枚、82円切手が40枚、30円切手が30枚あります。

#これらの切手の全部または一部（1枚以上）を使って額面の和として表せる金額は何通りあるか、求めてください。

# 各切手の価値と枚数
stamps = { 205 => 30, 82 => 40, 30 => 30 }

#Setは、重複する要素を自動的に排除するコレクション
# 作成可能な金額を格納するセット（重複を避けるためにセットを使用）
possible_sums = Set.new([0]) # 初期状態として0円を追加　205円の切手を一切買わない場合などの状況を想定するため
new_sums = Set.new

# 各切手についてループ
stamps.each do |money, count|
  (1..count).each do |i|
    possible_sums.each do |sum|
      new_sum = sum + money * i
      new_sums.add(new_sum)
    end
  end

  # 一時的なセットにある新しい金額をpossible_sumsに追加
  possible_sums.merge(new_sums)
end

# 0円（切手を全く使わないケース）を除外して、作成可能な金額の総数を表示
puts possible_sums.size - 1
