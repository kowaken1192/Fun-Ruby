

puts "お名前を入力してください: "
name = gets
puts "こんにちは、#{name}さん"

#出力結果
#お名前を入力してください:
#太郎
#こんにちは、太郎
#さん

#正しい書き方
puts "お名前を入力してください: "
name = gets.chomp
puts "こんにちは、#{name}さん"
