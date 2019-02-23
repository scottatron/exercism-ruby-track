class SpaceAge
  def initialize(seconds)
    @seconds = seconds
  end

  def on_earth
    @seconds / 31557600.to_f
  end

  {
    "mercury" => 0.2408467,
    "venus"   => 0.61519726,
    "mars"    => 1.8808158,
    "jupiter" => 11.862615,
    "saturn"  => 29.447498,
    "uranus"  => 84.016846,
    "neptune" => 164.79132
  }.each do |planet, delta|
    define_method "on_#{planet}" do
      on_earth / delta
    end
  end
end
