class FixedArray
  attr_reader :array

  def new(size)
    @array = Array.new(size)
  end

  def get(index)
    raise 'OutOfBoundsException' if index > @array.length - 1
    @array[index]
  end

  def set(index, element)
    raise 'OutOfBoundsException' if index > @array.length - 1
    @array[index] = element
  end

  def length
    @array.length
  end
end

# a = FixedArray.new
# a.new(3)
# p a.array
# a.set(0, 'hey')
# p a.get(0)
# p a.array