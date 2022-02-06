def binary_search(array, item)
  low = 0
  high = array.size - 1
  while low <= high
    mid = (low + high) / 2
    guess = array[mid]
    return mid if guess == item

    if guess > item
      high = mid - 1
    else
      low = mid + 1
    end
  end
  raise ArgumentError, 'There is no such item in array'
end

puts binary_search([1, 3, 5, 7, 9], -1)
