class Node
  attr_reader :value, :next
  def initialize(element)
    @value = element
    @next = nil
  end

  def insert_after(node)
    @next = node
  end

  def remove_after
    @next = nil
  end
end

class LinkedList
  def initialize()
    @head = nil
  end

  def insert_first(node)
    node.insert_after(@head)
    @head = node
  end

  def remove_first
    @head = @head.next
  end

  def insert_last(node)
    if @head == nil
      @head = node
    else
      current = @head
      while current.next != nil
        current = current.next
      end
      current.insert_after(node)
    end
  end

  def remove_last
    return nil if @head == nil
    if @head.next == nil
      @head = nil
    else
      current = @head
      while current.next.next != nil
        current = current.next
      end
      current.remove_after
    end
  end
end

a = Node.new('a')
b = Node.new('b')
c = Node.new('c')
x = LinkedList.new
x.insert_first(a)
x.insert_first(b)
x.insert_last(c)
p x