module Gigasecond
  SECONDS = 1_000_000_000

  def self.from(time)
    time + SECONDS
  end
end
