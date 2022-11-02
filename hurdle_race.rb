def hurdleRace(k, height)
  max_hurdle = height.max
  if k < max_hurdle
    return (max_hurdle - k)
  else
    return 0
  end
end