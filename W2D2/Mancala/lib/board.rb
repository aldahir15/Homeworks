class Board
  attr_accessor :cups, :name1, :name2

  def initialize(name1, name2)
    @cups = Array.new(14) {[]}
    @cups = @cups.map.each_with_index do |el, i|
      unless i == 6 || i == 13
        [:stone, :stone, :stone, :stone]
      else
        []
      end
    end
    @name1 = name1
    @name2 = name2
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos > 13 || start_pos < 1
  end

  def make_move(start_pos, current_player_name)
    size = @cups[start_pos].length
    @cups[start_pos] = []
    pos = start_pos
    if current_player_name == name1
      count = 0
      pos = start_pos + 1
      while count < size
        # p count
        pos = pos % 14
        if pos == 13
        else
          @cups[pos] += [:stone]
          count += 1
        end
        pos += 1
      end
    else
      count = 0
      while count < size
        # p pos
        # p count
        pos = pos % 14
        if pos == 6
        else
          @cups[pos] += [:stone]
          count += 1
        end
        pos += 1
      end
    end
    pos = pos % 14
    if pos == 13 && current_player_name == name2
      return :prompt
    elsif pos == 6 && current_player_name == name1
      return :prompt
    end
    return :switch if @cups[pos].empty?
    render
    next_turn(pos)
    pos - 1
    # return :prompt unless @cups[pos].empty?
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return true if @cups[0...6].all?{|x| x.empty?}
    false
  end

  def winner
    return :draw if @cups[6].length == @cups[13].length
    if @cups[6].length > @cups[13].length
      return name1
    else
      return name2
    end
  end
end
