require_relative 'body'

class Planet < Body

  def initialize(name,mass,day,year)
    super(name,mass)

    @day = day  # number of hours it takes for the planet to rotate all the way around once

    @year = year # number of days it takes for the planet to orbit the sun once.
  end

end
