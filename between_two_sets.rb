def getTotalX(a, b)
  highest_factor = a.max
  lowest_multiple = b.min
  integers = []
  while highest_factor <= lowest_multiple
    if a.all? {|num| highest_factor % num == 0}
      integers << highest_factor
    end
    highest_factor += 1
  end
  final_integers = []
  integers.each do |num|
    if b.all? {|multiple| multiple % num == 0}
    final_integers << num
    end
  end
  return final_integers.length
end