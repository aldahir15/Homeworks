## RECURSIVE

# def make_change(num, coins = [25,10,5,1])
#   return [] if num == 0
#   result = []
#   coins.each_with_index do |coin,i|
#     if num - coin >= 0
#       remaining_val = num - coin
#       remaining_coins = coins.drop(i)
#       possible = make_change(remaining_val, remaining_coins)
#       result << [coin] + possible
#     end
#   end
#   result.min{|x| x.length}
# end


## ITERATIVE

def make_change(value, coins = [25,10,5,1])
  final_changes = []
  stack = [[value, coins, []]]
  until stack.empty?
    current_val, current_coins, current_change = stack.pop
    if current_val == 0
      final_changes << current_change
    else
      current_coins.each_with_index do |coin,i|
        next if coin > current_val
        remaining_val = current_val - coin
        updated_change = current_change.dup
        updated_change << coin
        stack << [remaining_val, coins.drop(i), updated_change]
      end
    end
  end
  final_changes.min_by{|x| x.length}
end

p make_change(40, [25,10,5,1])
