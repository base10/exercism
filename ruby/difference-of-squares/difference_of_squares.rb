class Squares
  VERSION = 1

  attr_reader :number

  def initialize(number)
    @number = number
  end

  def square_of_sums
    ( as_set.inject(0) { |accumulator, number| accumulator + number } ) ** 2
  end

  def sum_of_squares
    as_set.inject(0) { |accumulator, number| accumulator + number ** 2 }
  end

  def difference
    square_of_sums - sum_of_squares
  end

  private

  def as_set
    1..number
  end
end
