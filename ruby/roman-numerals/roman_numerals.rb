#!/usr/bin/env ruby
require "pry"

class Fixnum
  VERSION = 1

  def to_roman
    if Romannum.all_types_hash.member?(self)
      Romannum.all_types_hash.fetch(self).letter
    end
  end

  private

end

class Romannum
  attr_reader :letter, :number

  def self.all_types
    @@all_types ||= [
      new(letter: "I", number: 1),
      new(letter: "V", number: 5),
      new(letter: "X", number: 10),
      new(letter: "L", number: 50),
      new(letter: "C", number: 100),
      new(letter: "D", number: 500),
      new(letter: "M", number: 1000),
    ]
  end

  def self.all_types_hash
    @@all_types_hash = all_types.each_with_object({}) do |num, hash|
      hash[num.number] = num
    end
  end

  def initialize(letter:, number:)
    @letter = letter
    @number = number
  end
end
