class Gigasecond
  require "time"

  VERSION = 2
  GIGASECONDS = 10**9

  def self.from(date)
    Time.at(anniversary_seconds(date))
  end

  def self.anniversary_seconds(date)
    date.to_i + GIGASECONDS
  end
end
