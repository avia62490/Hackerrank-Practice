def minimumDistances(a)
  min_dist = a.length
  indices = {}
  i = 0
  while i < a.length
    if indices.has_key?(a[i])
      dist = i - indices[a[i]]
      min_dist = dist if dist < min_dist
    end
    indices[a[i]] = i
    i += 1
  end
  if min_dist == a.length
    return -1
  else
    return min_dist
  end
end