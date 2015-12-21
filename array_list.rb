require './fixed_array'

class ArrayList
  attr_reader :array

  def initialize(size)
    @array = FixedArray.new(size)
  end

  def add(element)
    new_array = FixedArray.new(@array.length + 1){|index| new_array[index] = @array[index] }
    new_array.set(-1, element)
    @array = new_array
    element
  end

  def insert(index, element)
    new_array = FixedArray.new(@array.length + 1)
    old_count = 0
    new_count = 0
    while old_count < @array.length
      if new_count == index
        new_array.set(index, element)
        new_count += 1
      else
        new_array.set(new_count, @array.get(old_count))
        old_count += 1
        new_count += 1
      end
    end
    @array = new_array
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

a = ArrayList.new(3)
p a.size
p a.add('hey')
p a.get(0)
p a.get(3)
p a.set(0, "zero") 
p a.insert(1, "hey it worked")