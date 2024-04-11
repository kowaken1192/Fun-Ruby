require 'date'

# ユリウス暦でのうるう年かどうか判定
def julian_leap_year?(year)
  year % 4 == 0
end

# 与えられた年月の日数を返す
def days_in_month(year, month)
  # 2月はうるう年かどうかで日数が変わる
  if month == 2
    julian_leap_year?(year) ? 29 : 28
  else
    # 4, 6, 9, 11月は30日、それ以外は31日
    [4, 6, 9, 11].include?(month) ? 30 : 31
  end
end

# 2007年1月1日から数えて666回目の「13日の金曜日」を見つける
def find_666th_friday_13(start_year)
  count = 0
  date = Date.new(start_year, 1, 1)  # 2007年1月1日
  while count < 666
    if date.day == 13 && date.wday == 5  # 13日かつ金曜日
      count += 1
      return date.strftime("%Y%m%d") if count == 666
    end
    # 次の日へ
    date = date.next_day
  end
end

puts find_666th_friday_13(2007)
