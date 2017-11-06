### COUNTING SORT ###

def counting_sort(array, max)
  #make two new arrays, one for counting and one for the answer
  counted_array = Array.new(max + 1, 0)
  sorted = Array.new(array.length, 0)

  #turn the counted array to have instances of each number
  array.each do |num|
    counted_array[num] += 1
  end

  #add each pair of numbers together
  for i in 1..counted_array.length - 1
    counted_array[i] += counted_array[i - 1]
  end
  #shift everything to the right and remove last element
  counted_array.unshift(0).pop

  #map each number to it's correct place in the sorted array
  array.each do |num|
    sorted[counted_array[num]] = num
    counted_array[num] += 1
  end

  sorted
end
