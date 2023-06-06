# @param {String} s
# @return {Integer}
def roman_to_int(s)
  total = 0
  s.each_char.with_index { |char, index|
      case char
      when "M"
          total += 1000
      when "D"
          total += 500
      when "C"
          s[index + 1] == "M" || s[index + 1] == "D" ? total -= 100 : total += 100
      when "L"
          total += 50
      when "X"
          s[index + 1] == "L" || s[index + 1] == "C" ? total -= 10 : total += 10
      when "V"
          total += 5
      when "I"
          s[index + 1] == "X" || s[index + 1] == "V" ? total -= 1 : total += 1
      end
  }
  return total
    
  end