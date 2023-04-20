def gemstones(arr)
  identifier = arr[0].split(//).uniq
  identifier.keep_if {|letter| arr.all? {|string| string.include?(letter)}}
  return identifier.length
end