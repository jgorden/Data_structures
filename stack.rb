class Stack
  def initialize
    @stack = []
  end

  def push(item)
    @stack.unshift(item)
  end

  def pop
    @stack.shift
  end

  def top
    @stack[0]
  end

  def empty?
    @stack.empty?
  end
end