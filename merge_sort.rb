### MERGE SORT ###

def merge_sort(array)
  # array is sorted if it's length is 1
  return array if array.length == 1

  # find the midpoint and split the array into two
  midpoint = array.length/2
  left = array.slice(0...midpoint)
  right = array.slice(midpoint..-1)

  # recursively call this function to keep splitting the array
  merge_sort(left)
  merge_sort(right)

  #call below function to merge the pieces back together
  merge(left, right, array)

  array
end

def merge(left, right, array)
  index = 0

  #while both left and right have elements, add the smaller to the array
  while !left.empty? && !right.empty?
    left[0] < right[0] ? array[index] = left.shift : array[index] = right.shift
    index += 1
  end

  #while only the left has elements, add the first element of left to the array
  while !left.empty?
    array[index] = left.shift
    index += 1
  end

  #while only the right has elements, add the first element of right to the array
  while !right.empty?
    array[index] = right.shift
    index += 1
  end

  array
end
