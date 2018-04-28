def insertion_sort(array)
  new_array = array.dup
  
  for i in 1...new_array.length
    key = new_array[i]
    j = i - 1 
    
    while j >= 0 && new_array[j] > key
      new_array[j + 1] = new_array[j]
      j -= 1
    end
    new_array[j + 1] = key
  end
  new_array
end