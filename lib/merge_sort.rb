require 'pry'
def merge_sort(array)
  return array if array.length <= 1
  mid = (array.length/2).floor
  left = merge_sort(array[0..mid-1]) 
  right = merge_sort(array[mid..array.length])
  merge(left, right)
end

def merge(left, right) 
  return right if left.empty?
  return left if right.empty?
  
  if left.first < right.first
    [left.first] + merge(left[1..left.length], right)
  else
    [right.first] + merge(left, right[1..right.length])
  end
  
end