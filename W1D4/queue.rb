class Queue
  attr_reader :queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.push(el)
  end

  def dequeue
    @queue.shift
  end

  def show
    p @queue
  end

end


new_queue = Queue.new
(0..5).each do |num|
  new_queue.enqueue(num)
end
new_queue.show
# new_queue.dequeue
# new_queue.show
# new_queue.enqueue(99)
# new_queue.show
# new_queue.dequeue
# new_queue.show
