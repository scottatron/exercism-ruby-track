class SpaceAge
  def initialize(seconds)
    @seconds = seconds
  end

  def on_earth
    @seconds / 31557600.to_f
  end

  def method_missing(method_name)
    planet = method_name.to_s.sub(/on_/, "")
    super unless EARTH_DELTAS.keys.include?(planet)
    on_earth / EARTH_DELTAS.fetch(planet)
  end

  private

  EARTH_DELTAS = {
    "mercury" => 0.2408467,
    "venus"   => 0.61519726,
    "mars"    => 1.8808158,
    "jupiter" => 11.862615,
    "saturn"  => 29.447498,
    "uranus"  => 84.016846,
    "neptune" => 164.79132
  }.freeze
end
