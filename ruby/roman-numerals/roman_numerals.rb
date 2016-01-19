#!/usr/bin/env ruby

class Fixnum
  VERSION = 1

  def to_roman
    case self
    when 1; then "I"

      # I should seemingly look at the size of the pool, look at the number and
      # decide what value to use
      # 1000s 100s 10s 0s
    end
  end
end
