numbers = [1,2,3,4]
sum = 0
numbers.each do |n|
  #+=演算子は num = num + １と同じ
  sum = sum + n
end

puts sum

from = 10
to = 20
sum = 0

#for文は配列の要素内でのループの数を示す
for i in from..to
  sum = sum + 1
end

puts sum


items = {"鉛筆" => 100, "消しゴム" => 50, "ノート" => 200}
items.each do |key, value|
 puts "#{key}は#{value}円です。"
end
