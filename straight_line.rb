# You are given an array coordinates, coordinates[i] = [x, y], where [x, y] represents the coordinate of a point. Check if these points make a straight line in the XY plane.

# @param {Integer[][]} coordinates
# @return {Boolean}
def check_straight_line(coordinates)
  origin = coordinates[0] 
  overall_rise = coordinates[-1][1] - origin[1] 
  overall_run = coordinates[-1][0] - origin[0] 
  if overall_run == 0 
    return coordinates.all? {|coord| coord[0] == origin[0]}
  elsif overall_rise == 0 
    return coordinates.all? {|coord| coord[1] == origin[1]}
  end
  overall_slope = overall_rise / overall_run.to_f 
  coordinates.each {|coord|
    rise = coord[1] - origin[1] 
    run = coord[0] - origin[0] 
    return false if run * overall_slope != rise 
  }
  return true
    
end
