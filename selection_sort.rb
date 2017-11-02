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
