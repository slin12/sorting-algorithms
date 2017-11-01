array = [3, 7, 1, 2, 9]
array2 = [4, 2, 8, 12, 6, 9, 15, 20, 1, 7]

### SELECTION SORT ###

def selection_sort(array)
  #loop through all the numbers(except the last)
  for i in 0...array.length - 1
    #assume the first number in the array is the smallest
    smallest_index = i

    #loop through the remaining numbers and compare them to the first(aka current smallest)
    for j in (i+1)...array.length
      if array[j] < array[smallest_index]
        #reassign the smallest index if you find a number smaller
        smallest_index = j
      end
    end

    #checks if the smallest index has been changed; if so, swap the two numbers
    if smallest_index != i
      array[i], array[smallest_index] = array[smallest_index], array[i]
    end

  end
  #return the array
  array
end

### BUBBLE SORT ###

def bubble_sort(array)
  #use this variable as a flag
  sorted = false

  until sorted
    #set sorted each time to true, so the loop will finish if no swaps are done
    sorted = true
    for i in 1..array.length - 1
      #compares each pair in the array
      if array[i - 1] > array[i]
        #put up the flag so the iteration will continue
        sorted = false
        #swap the two elements
        array[i - 1], array[i] = array[i], array[i - 1]
      end
    end
  end
  array
end

### INSERTION SORT ###

def insertion_sort(array)
  #create new array that holds the sorted elements
  sorted = [array[0]]
  #iterate through all the elements in the original array
  for i in 1..array.length - 1
    #iterate through the sorted's elements for comparison
    for j in 0..sorted.length - 1
      if sorted[j] > array[i]
        sorted.insert(j, array[i])
        #break so an element does not get inserted more than once
        break
      end
    end
    #if the element is bigger, then it gets added to the end.
    sorted << array[i] if sorted.last < array[i]
  end
  sorted
end

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

### QUICK SORT ###

def quicksort(array)

  return array if array.length <= 1

  pivot_index = array.length - 1
  pivot_value = array[pivot_index]
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
