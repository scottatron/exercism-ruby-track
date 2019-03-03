class Matrix
  attr_reader :rows

  def initialize(string)
    @rows = string.split("\n").map { |r| r.scan(/\d+/).map(&:to_i) }
  end

  def columns
    rows.transpose
  end
end
