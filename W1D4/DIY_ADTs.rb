class Stack
  attr_reader :stack
  def initialize
    # create ivar to store stack here!
    @stack = []
  end

  def add(el)
    # adds an element to the stack
    @stack.push(el)
  end

  def remove
    # removes one element from the stack
    @stack.pop
  end

  def show
    # return a copy of the stack
    p @stack
  end
end

new_stack = Stack.new
(0..5).each do |num|
  new_stack.add(num)
end
new_stack.show
# new_stack.remove
# new_stack.show
# new_stack.add(99)
# new_stack.show
# new_stack.remove
# new_stack.show
