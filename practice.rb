#１から５までの数の合計を計算する
sum = 0
for i in 1..5
    sum = sum + i
end
puts sum

#timesメソッドを使って１０から２０までの合計の数
from = 10
to = 20
sum = 0
(to - from + 1).times do |i|
    sum = sum + (i + from)
end
puts sum

#10から20までの合計の数　for文
from = 10
to = 20
sum = 0
for i in from..to
    sum = sum + i
end
puts sum

#10から100までの合計の数
from = 10
to = 100
sum = 0
for i in from..to
    sum = sum + i
end
puts sum
