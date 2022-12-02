def equalizeArray(arr)
  occurences = arr.count(arr[0])
  arr2 = arr.uniq
  arr2.each do |number|
    occurences = arr.count(number) if arr.count(number) > occurences
  end
  deletions = arr.length - occurences
  return deletions
end