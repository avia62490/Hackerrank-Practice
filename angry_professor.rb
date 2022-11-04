def angryProfessor(k, a)
  non_late_students = 0
  a.each do |num|
    if num <= 0
      non_late_students += 1
    end
  end
  if non_late_students >= k
    return "NO"
  else
    return "YES"
  end
end