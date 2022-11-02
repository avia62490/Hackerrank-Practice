def designerPdfViewer(h, word)
  tallest_letter = 0
  index = 0
  while index < word.length
    letter = word[index]
    letter_index = letter.to_i(36) - 10
    letter_height = h[letter_index]
    if letter_height > tallest_letter
      tallest_letter = letter_height
    end
    index += 1
  end
  area = tallest_letter * word.length
  return area
end