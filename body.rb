require_relative 'planets'
require_relative 'stars'
require_relative 'moons'


class Body

  def initialize(name, mass)
    @name = name
    @mass = mass
  end

  def name
    @name
  end

  def mass
    @mass
  end

end
