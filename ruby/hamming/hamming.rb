class Hamming
  VERSION = 2

  def self.compute(first, second)
    validate_length(first, second)
    range = 0..first.length
    range.count { |n| first[n] != second[n] }
  end

  def self.validate_length(first, second)
    if first.length != second.length
      raise ArgumentError, "Lengths must match"
    end
  end
end
