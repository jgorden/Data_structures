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

a = Stack.new
p a.empty?
a.push(1)
p a.top
a.push(2)
p a.top
a.pop
p a.top
p a.empty?