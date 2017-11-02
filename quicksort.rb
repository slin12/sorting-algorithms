### QUICK SORT ###

def quicksort(array)

  return array if array.length <= 1

  #call partition to sort the array around the pivot point
  new_pivot_index = partition(array)

  #split into two arrays, left and right
  left = array.slice(0...new_pivot_index)
  right = array.slice(new_pivot_index..-1)
  #recursively call on the left array and the right array
  return quicksort(left) + quicksort(right)
end

def partition(array)
  pivot_index = array.length - 1
  pivot_value = array[pivot_index]

  #the place where smaller and larger are split
  left_wall = 0
  #for all elements except the last, which is the pivot
  for j in 0..array.length - 2
    #if the element is smaller than the pivot, switch it with the wall and advance the wall
    if array[j] < pivot_value
      array[j], array[left_wall] = array[left_wall], array[j]
      left_wall += 1
    end
  end
  #switch the pivot with the element at the pivot index to complete the partition
  array[left_wall], array[pivot_index] = array[pivot_index], array[left_wall]

  return left_wall
end
