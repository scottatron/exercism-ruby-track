class Matrix
  attr_reader :rows

  def initialize(string)
    @rows = string.lines.map { |r| r.scan(/\d+/).map(&:to_i) }
  end

  def columns
    rows.transpose
  end
end
