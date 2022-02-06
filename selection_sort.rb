# frozen_string_literal: true

def selection_sort(array)
  (0...array.size).each do |i|
    smallest_index = i
    ((i + 1)...array.size).each do |j|
      smallest_index = array[smallest_index] < array[j] ? smallest_index : j
    end
    array[i], array[smallest_index] = array[smallest_index], array[i]
  end
end

a = [5, 3, 6, 2, 10]
selection_sort(a)
puts a.to_s
