# Given an integer, convert it to a roman numeral.

# @param {Integer} num
# @return {String}
def int_to_roman(num)

  values = {"M" => 1000, "CM" => 900, "D" => 500, "CD" => 400, "C" => 100, "XC" => 90, "L" => 50, "XL" => 40, "X" => 10, "IX" => 9, "V" => 5, "IV" => 4, "I" => 1}
  string = ""
  while num > 0
    values.each_pair {|key, value|
      if num >= value
        string += key
        num -= value
        break
      end
    }
  end
  return string
end
