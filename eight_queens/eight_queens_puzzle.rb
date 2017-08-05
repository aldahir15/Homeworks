require_relative "board.rb"


  def solve(board)
    return board if board.is_solved?
    col = board.queen_count
    (0...(board.size)).each do |i|
        if board.is_pos_valid?(i, col)
        new_board = board.dup # DUPLICATE IT!!!!!!!
                              # YOU'RE MODIFYING THE ORIGINAL WITH POSITIONS IF YOU DONT
        new_board.place_queen(i,col)
        sub_solution = solve(new_board)
        return sub_solution unless sub_solution.nil?
      end
    end
    nil
  end

new_board = Board.new(14)
solve(new_board).render
