require_relative 'body'

class Star < Body

  def initialize(name, mass, type)
    super(name)
    super(mass)
    @type = type # ie. our Sun is a G-type star
  end

end
