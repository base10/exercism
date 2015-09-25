require "pry"

class Raindrops
  VERSION = 2

  def self.convert(number)
    factors = [
      Factor.new(3, "Pling"),
      Factor.new(5, "Plang"),
      Factor.new(7, "Plong"),
    ]

    factors.inject(number) do |response, factor|
      puts response
      factor.calculate_response(number: number, response_context: response)
    end
  end
end

class Factor < Struct.new(:factor, :response)
  def factor_of?(number)
    number % factor == 0
  end

  def calculate_response(number:, response_context:)
    case factor_of?(number)
    when true && response_context.class == Fixnum
      puts "hit true fixnum"
      response
    when true && response_context.class == String
      puts "hit true string"
      response_context + response
    when false
      puts "hit false"
      response_context
    end
  end
end
