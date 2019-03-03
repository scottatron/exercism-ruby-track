class Triangle
  def initialize(sides = [])
    @sides = sides
    raise ArgumentError, "Triangles must have 3 sides" if sides.length != 3
  end

  def equilateral?
    sides.uniq.one? && !sides.sum.zero?
  end

  def isosceles?
    !inequal? && (sides.uniq.length == 2 || equilateral?)
  end

  def scalene?
    !inequal? && sides.uniq.length == 3
  end

  private

  attr_reader :sides

  def inequal?
    sides.max > sides.min(2).sum
  end
end
