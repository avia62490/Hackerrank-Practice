# Given two strings s and t, return true if t is an anagram of s, and false otherwise.

# An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)

  if s.length == t.length
    s.each_char {|char| t.include?(char) ? t.slice!(t.index(char)) : break }
  end
  t.empty?
      
end
  