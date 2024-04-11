n = gets.to_i
stocks = n.times.map { gets.split.map(&:to_i) }

# 初期値の設定
opening_price = stocks.first[0]  # 始値: 最初の日の始値
closing_price = stocks.last[1]   # 終値: 最後の日の終値
high_price = stocks[0][2]        # 高値: 最初に仮定
low_price = stocks[0][3]         # 安値: 最初に仮定

stocks.each do |stock|
  high_price = [high_price, stock[2]].max  # 最大の高値を更新
  low_price = [low_price, stock[3]].min    # 最小の安値を更新
end

# 結果の出力
puts "#{opening_price} #{closing_price} #{high_price} #{low_price}"
