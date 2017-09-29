require_relative 'body'

class Moon < Body

  def initialize(name, mass,month,planet)
    super(name)
    super(mass)
    @month = month
    @planet = planet
  end

end
