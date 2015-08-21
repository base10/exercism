class Hamming
  VERSION = 1

  def self.compute(first, second)
    validate_length(first, second)
    range = 0..first.length
    range.inject(0) { |sum, n| sum + Pair.new(first[n], second[n]).compare }
  end

  def self.validate_length(first, second)
    if first.length != second.length
      raise ArgumentError, "Lengths must match"
    end
  end
end

class Pair < Struct.new(:first, :second)
  def compare
    if first == second
      0
    else
      1
    end
  end
end
