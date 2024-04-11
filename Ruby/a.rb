text = "テスト"
true_text = text.reverse
puts true_text.include?("トステ")

string = ""
p string.empty?

language = "ruby,rails,python"
p language.split(",")

string = "samraui, ruby, rails"
p string.split(",")

test = "samraui,ruby,rails"
p test.chars

string = "hello, samurai"
delete_string = string.delete("l")
p delete_string
