def caesarCipher(s, k)
  letters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
  rotated_letters = letters.rotate(k)
  output = ""
  i = 0
  while i < s.length
    letter = s[i].downcase
    index = letters.index(letter)
    if !letters.any?(letter)
      output += s[i]
    elsif s[i] == letter
      output += rotated_letters[index]
    elsif s[i] == letter.upcase
      output += rotated_letters[index].upcase
    end
    i += 1
  end
  return output
end