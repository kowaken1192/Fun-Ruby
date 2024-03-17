x, y, p = gets.split.map(&:to_i) # 標準入力からX, Y, Pの値を受け取る

# 必要な外部記憶装置の数を計算（切り上げ）
# (x + y - 1) / y は、XをYで割った時に余りが出た場合に1つ追加するための計算
num_devices = (x + y - 1) / y

# 必要な外部記憶装置の総価格を計算
total_cost = num_devices * p

# 総価格を出力
puts total_cost
