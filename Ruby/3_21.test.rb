# 自分の得意な言語で
# Let's チャレンジ！！
n = gets.chomp
m = gets.to_i
rooms = []
m.times do
    room = gets.chomp
    rooms << room unless room.include?(n)
end

if rooms.empty?
    puts "none"
else
    puts rooms
end
