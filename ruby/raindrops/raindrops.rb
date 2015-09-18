require "pry"

class Raindrops
  VERSION = 1

  def self.convert(number)
    factors = [
      Factor.new(3, "Pling"),
      Factor.new(5, "Plang"),
      Factor.new(7, "Plong"),
    ]

    responses = Array.new

    factors.each do |factor|
      if factor.factor_of?(number)
        responses << factor.response
      end
    end

    responses.any? ? responses.join("") : number.to_s
  end
end

class Factor < Struct.new(:factor, :response)
  def factor_of?(number)
    number % factor == 0
  end
end
