numbers = [1, 2, 3, 4, 5]
#mapメソッドは｜n｜をブロック値として新しい配列とする
new_numbers = numbers.map {|n| n * 10}
p new_numbers

numbers = [1, 2, 3, 4 ,5, 6]
#evenは偶数評価
even_numbers = numbers.select {|n| n.even?}
p even_numbers

numbers = [1, 2, 3, 4, 5, 6]
non_multiples_of_three = numbers.select {|n| n % 3 }

n = 70
m = 100
#to_fがないと０になる
result = n / m.to_f
p result

date = find_data
if data != nil




#配列の各要素を連結するメソッド
test = [10, 20, 30]
test.join
end
p test
