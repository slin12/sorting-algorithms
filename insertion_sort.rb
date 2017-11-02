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
