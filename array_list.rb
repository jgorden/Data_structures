require './fixed_array'

class ArrayList
  attr_reader :array
  
  def initialize
    @array = FixedArray.new
  end

  def new(size)
    @array.new(size)
  end

  def add(element)
    new_array = FixedArray.new
    new_array.new(@array.length + 1){|index| new_array[index] = @array[index] }
    new_array.set(-1, element)
    @array = new_array
    element
  end

  def get(index)
    raise 'OutOfBoundsException' if index > @array.length - 1
    @array.array[index]
  end

  def set(index, element)
    raise 'OutOfBoundsException' if index > @array.length - 1
    @array.set(index, element)
  end

  def size
    @array.length
  end
end

a = ArrayList.new
p a.new(3)
p a.size
p a.add('hey')
p a.get(0)
p a.get(3)
p a.set(0, "zero") 
p a.array.array