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
