#!/usr/bin/env ruby

class Fixnum
  VERSION = 1

  def to_roman
    if roman_numbers.member?(self)
      roman_numbers.fetch(self).letter
    else
      convert
    end
  end

  private

  def convert
    puts "hi!"
  end

  def roman_numbers
    {
      1 => Romannum.new(letter: "I", number: 1),
      5 => Romannum.new(letter: "V", number: 5),
      10 => Romannum.new(letter: "X", number: 10)
    }
  end
end

class Romannum
  attr_reader :letter, :number

  def initialize(letter:, number:)
    @letter = letter
    @number = number
  end
end
