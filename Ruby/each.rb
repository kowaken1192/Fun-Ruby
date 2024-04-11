
# ナイトの動きを定義
moves = [[-2, -1], [-1, -2], [1, -2], [2, -1], [2, 1], [1, 2], [-1, 2], [-2, 1]]

# チェス盤のサイズ
board_size = 50

# 初期位置
start_position = [0, 0]

# 到達できるマスを記録するセット
reachable = Set.new

# 深さ優先探索でナイトを20回動かす
def dfs(position, depth, moves, board_size, reachable)
  if depth == 20
    reachable.add(position)
    return
  end

  moves.each do |dx, dy|
    new_x = position[0] + dx
    new_y = position[1] + dy
    if new_x >= 0 && new_x < board_size && new_y >= 0 && new_y < board_size
      dfs([new_x, new_y], depth + 1, moves, board_size, reachable)
    end
  end
end

dfs(start_position, 0, moves, board_size, reachable)

# 到達できるマスの数を出力
puts reachable.size
