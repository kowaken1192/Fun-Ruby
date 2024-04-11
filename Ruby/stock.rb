# n日間の株価データを取得
stocks = [[1, 2, 100, 0],
          [4, 5, 6, 5],
          [7, 8, 9, 1],
          [2, 5, 5, 5]]

opening_price = stocks.first[0]
closing_price = stocks.last[1]
high_price = stocks.first[2]
low_price = stocks.first[3]

stocks.each do |stock|
  # 高値を更新
  if stock[2] > high_price
    high_price = stock[2]
  end

  # 安値を更新
  if stock[3] < low_price
    low_price = stock[3]
  end
end


# 結果の出力
puts "#{opening_price} #{closing_price} #{high_price} #{low_price}"
