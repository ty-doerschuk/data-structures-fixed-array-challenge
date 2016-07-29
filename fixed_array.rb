# FixedArray#new(size): Instantiate a new FixedArray with space for size elements.
# FixedArray#get(index): Get a value from the array at the specified index. Throw an OutOFBoundsException if the user tries to get a value at an index outside the bounds of the fixed array.
# FixedArray#set(index, element): Set a value in the array at a specific index and return the element. Throw an OutOFBoundsException if the user tries to set a value at an index outside the bounds of the fixed array.

class FixedArray

  attr_accessor :arr

  def initialize(size)
    @arr = Array.new(size)
  end

  def set(index, element)
    if arr.length <= index
      raise IndexError, 'Index is not valid'
    else
      arr[index] = element
    end
  end

  def get(index)
    if arr.length <= index
      raise IndexError, 'Index is not valid'
    else
      arr[index]
    end
  end
end
