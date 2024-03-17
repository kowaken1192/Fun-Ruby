# 初期化
total_weight = (1..800).sum
max_load = 5000
current_load = 0
trucks = 0

# 重い荷物から順にチェック
(800).downto(1) do |weight|
  if current_load + weight > max_load
    trucks += 1 # 新しいトラックが必要
    current_load = weight # 新しいトラックに最初の荷物を積む
  else
    current_load += weight # 現在のトラックに荷物を積む
  end
end

# 最後のトラックに荷物が積まれている場合、トラックの数を1増やす
trucks += 1 if current_load > 0

# 必要なトラックの台数を出力
puts trucks

require 'date'

# 初期設定: ユリウス暦2007年1月1日は日曜日
start_date = Date.new(2007, 1, 1)
# ユリウス暦とグレゴリオ暦のずれを考慮
adjusted_start_date = start_date - 13
friday_13ths_count = 0
current_date = adjusted_start_date

def julian_leap_year?(year)
  year % 4 == 0
end

while friday_13ths_count < 666
  if current_date.day == 13 && current_date.cwday == 5
    friday_13ths_count += 1
    break if friday_13ths_count == 666
  end
  current_date = current_date.next_day
  # ユリウス暦のうるう年調整
  if current_date.month == 2 && current_date.day == 28
    if julian_leap_year?(current_date.year)
      current_date = current_date.next_day
    end
  end
end

# グレゴリオ暦に戻す調整
answer_date = current_date + 13
formatted_answer = answer_date.strftime("%Y%m%d")
puts formatted_answer
