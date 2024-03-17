# 入力を受け取る
s = gets.chomp
n = gets.to_i

# 指定された位置の文字を削除
result = s.slice(0, n-1) + s.slice(n, s.length - n)

# 結果を出力
puts result

puts "お名前を入力してください: "
name = gets
puts "こんにちは、#{name}さん"
