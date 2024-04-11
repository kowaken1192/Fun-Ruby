# 入力を受け取る
s = gets
n = gets.to_i # 部分点を得るために必要な正解数

# 正解の数を数える
correct_answers = s.count('R')

# 正解の数が部分点を得るための閾値に達しているか判定する
if correct_answers >= n
  puts "Yes"
else
  puts "No"
end

# 成績を標準入力から受け取る
grade = gets.to_i
# プレゼント候補を標準入力から受け取り、配列にする
presents = gets.chomp.split

# 成績に応じたプレゼントを選択
chosen_present = presents[grade - 1]

# 選ばれたプレゼントを出力
puts chosen_present

# 整数「2」を取得（入力1行目）
input_line = gets.to_i

# 2回処理を繰り返す
input_line.times do

  # 1回目の処理で[2, 5]が取得できる
  # 2回目の処理で[3, 4]が取得できる
  s = gets.chomp.split(" ")
  
  # 「s」の0番目、1番目を展開してprintメソッドで出力
  print "hello = #{ s[0] } , world = #{ s[1] }\n"
end

=> "hello = 2 , world = 5"
=> "hello = 3 , world = 4"


input = gets.to_i
g = gets.chomp

input.times do
    line = gets.chomp
    if line.include?(g)
        puts line
    end
end
