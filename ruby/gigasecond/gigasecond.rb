class Gigasecond
  require "time"

  VERSION = 1
  GIGASECONDS = 10**9

  def self.from(date)
    Time.strptime(anniversary_seconds(date).to_s, "%s")
  end

  def self.anniversary_seconds(date)
    date.to_i + GIGASECONDS
  end
end
