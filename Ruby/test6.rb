size = 48
board = Array.new(size) { Array.new(size) }
dx = [0, 1, 0, -1] # 右、下、左、上へ移動するためのX方向の変化量
dy = [1, 0, -1, 0] # 右、下、左、上へ移動するためのY方向の変化量
x, y = 0, 0 # 開始位置
dir = 0 # 最初は右向き
letter = "A"

size.times { size.times {
  board[x][y] = letter
  letter = letter.next
  letter = "A" if letter == "AA" # Zの次はA
  # 次の位置
  nx, ny = x + dx[dir], y + dy[dir]
  # 境界チェックおよび既に埋められているかチェック
  if nx < 0 || ny < 0 || nx >= size || ny >= size || board[nx][ny]
    dir = (dir + 1) % 4 # 方向転換
    nx, ny = x + dx[dir], y + dy[dir]
  end
  x, y = nx, ny
}}

# 対角線上の文字を読み取る
diagonal = (0...size).map { |i| board[i][i] }.join

puts diagonal
