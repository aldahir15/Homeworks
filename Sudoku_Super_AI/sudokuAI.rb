require_relative 'board'

def solver(board)
  return board.render if board.solved?
  positions = seek_empty_cell(board)
  (1..9).each do |num|
    new_board = board.dup
    if board.is_valid?(positions[0],positions[1], num)
      new_board[positions] = num
      solution = solver(new_board)
      return solution unless solution.nil?
    end
  end
  nil
end

# Few helper methods
def seek_empty_cell(board)
    board.rows.each_index do |i|
        board.rows[i].each_index do |j|
            pos = [i, j]
            return pos if board[pos].value == 0
        end
    end
end

dummy_board = Board.new
solver(dummy_board)
