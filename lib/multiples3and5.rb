# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

class Multiples
  class InvalidNumbersError < StandardError; end

  def self.run(start_number, end_number)
    raise InvalidNumbersError if start_number > end_number
      
    (start_number...end_number).filter_map {|n| n if multiple_of_three_or_five?(n)}.sum
  end

  def self.multiple_of_three_or_five?(number)
    number % 3 == 0 || number % 5 == 0
  end

end