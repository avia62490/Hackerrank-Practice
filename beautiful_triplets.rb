def beautifulTriplets(d, arr)
  index = 0
  triplets = 0
  while index < arr.length - 2
    number = arr[index]
    if arr.include?(number + d) && arr.include?(number + 2 * d)
      triplets += 1
    end
    index += 1
  end
  return triplets
end