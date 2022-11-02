def countingValleys(steps, path)
  elevation = 0
  elevations = [0]
  index = 0
  while index < path.length
    if path[index] == "U"
      elevation += 1
      elevations << elevation
    elsif path[index] == "D"
      elevation -= 1
      elevations << elevation
    end
    index += 1
  end
  
  valleys = 0
  i = 0
  while i < elevations.length - 1
    j = i + 1
    if elevations[i] == 0 && elevations[j] == -1
      valleys += 1
    end
    i += 1
  end
  return valleys
end