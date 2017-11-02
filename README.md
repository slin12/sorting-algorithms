# SORTING IN RUBY

This repository contains my implementations of common sorting algorithms. See below for a quick breakdown of each sorting algorithm and some links to learn more:

## SELECTION SORT
  Selection sort works by assuming the first number is the smallest number. It loops through the rest of the numbers, checking to see if there is a smaller number. If there is, the first number is switched with the smallest number; putting the smallest number in it's correct place. The loop then moves onto the element in index 2 and repeats the process, moving the next smallest number to its correct place, until the array is sorted.

  This algorithm has a O(n²) time complexity and is an in-place sorting method.

  Some links for further reading:
  [1](https://medium.com/basecs/exponentially-easy-selection-sort-d7a34292b049)
  [2](http://www.geeksforgeeks.org/selection-sort/)
  [3](https://www.hackerearth.com/practice/algorithms/sorting/selection-sort/tutorial/)

## BUBBLE SORT
  Bubble sort has a reputation for being the most hated sorting algorithm; even Obama knows about it! It loops through the array and compares the first element to the second; if the second is smaller, it switches them. This continues until the last element(which is the largest), is in it's correct place. The looping then starts over again from the beginning, bringing the second largest number to it's place. Eventually, we'll have a sorted array.

  This algorithm has a O(n²) time complexity and is an in-place sorting method.

  Some links for further reading:
  [1](https://medium.com/basecs/bubbling-up-with-bubble-sorts-3df5ac88e592)
  [2](https://rosettacode.org/wiki/Sorting_algorithms/Bubble_sort)
  [3](http://www.geeksforgeeks.org/bubble-sort/)

## INSERTION SORT
  Insertion sort is a nifty sorting algorithm that loops through the array and assumes the first element is sorted. Looking at the second element, it places it either before or after the first element, depending on if its smaller or larger. This continues, with each element being inserted into it's correct place. Although it is O(n²) in terms of time complexity, the reality is that it is usually a lot more efficient than selection sort or insertion sort. Still, time complexity looks at worst case scenarios so it is still categorized as such.

  This algorithm has a O(n²) time complexity and is an in-place sorting method.

  Some links for further reading:
  [1](https://medium.com/basecs/inching-towards-insertion-sort-9799274430da)
  [2](http://www.geeksforgeeks.org/insertion-sort/)
  [3](https://www.tutorialspoint.com/data_structures_algorithms/insertion_sort_algorithm.htm)

## MERGE SORT
  Merge sort is a popular sorting algorithm that utilizes the divide and conquer concept and recursion to drastically speed up run time. It continually splits the array until the array is a bunch of arrays of single elements. One single element is compared to another, and they then merge into a sorted array of two elements. The two element arrays then compare themselves to another two element array; then four and four, eight and eight, until we arrive back at a fully sorted array.

  This algorithm has a O(n log n) time complexity and is an out-of-place sorting method.

  Some links for further reading:
  [1](https://medium.com/basecs/making-sense-of-merge-sort-part-1-49649a143478)
  [2](https://medium.com/basecs/making-sense-of-merge-sort-part-2-be8706453209)
  [3](http://www.geeksforgeeks.org/merge-sort/)

## QUICKSORT

  Quicksort is one of the most popular and efficient sorting algorithms (in face, Ruby uses quicksort as it's default sort!). Quicksort chooses a pivot - commonly the last or first element, and partitions the rest of the array. Elements smaller than the pivot are on one side (left), elements larger or equal on the other (right). The pivot is then put in the middle, right where it belongs. It then recursively calls quicksort each side, until all elements are in their correct place. One potential drawback of quicksort is in choosing the pivot - the pivot should be as close to the median of the array as possible. The time complexity will grow significantly if quicksort is sorted or nearly sorted; it has potential to grow to O(n²).

  This algorithm has a O(n log n) time complexity and is generally considered an in-place sorting method.

  Some links for further reading:
  [1](https://medium.com/basecs/pivoting-to-understand-quicksort-part-1-75178dfb9313)
  [2](https://medium.com/basecs/pivoting-to-understand-quicksort-part-2-30161aefe1d3)
  [3](http://www.geeksforgeeks.org/quick-sort/)
