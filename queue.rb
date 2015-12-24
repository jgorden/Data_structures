class Queue

  def initialize
    @queue = []
  end

  def enqueue(element)
    @queue.unshift(element)
  end

  def dequeue(element)
    @queue.pop
  end

  def peel
    @queue[0]
  end

  def empty?
    @queue.empty?
  end
end