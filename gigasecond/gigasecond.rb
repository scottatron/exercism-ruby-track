module Gigasecond
  SECONDS = 1_000_000_000

  def self.from(time)
    Time.at(time.to_i + SECONDS).utc
  end
end
