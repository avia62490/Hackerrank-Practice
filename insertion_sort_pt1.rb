def insertionSort1(n, arr)
  index = n - 1
  target = arr[index] 
  while index >= 0
    if index == 0
      arr[0] = target
      puts arr.join(" ")
      break
    elsif target > arr[index - 1]
      arr[index] = target
      puts arr.join(" ")
      break
    else
      arr[index] = arr[index - 1]
      puts arr.join(" ")
    end
    index -= 1
  end
end