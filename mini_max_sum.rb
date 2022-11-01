def miniMaxSum(arr)
  arr.sort!  
  min_sum = arr.sum - arr[4]
  max_sum = arr.sum - arr[0]
  puts "#{min_sum} " + "#{max_sum}"
end