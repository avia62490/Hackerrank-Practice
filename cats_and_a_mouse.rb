def catAndMouse(x, y, z)
  distance_A = (z - x).abs
  distance_B = (z - y).abs
  if distance_A < distance_B
    return "Cat A"
  elsif distance_B < distance_A
    return "Cat B"
  elsif distance_A == distance_B
    return "Mouse C"
  end
end