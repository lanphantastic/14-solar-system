# Let's write a program that can help us figure out how much stuff it has by keeping a list of all the celestial bodies in our system and adding up their total mass.

# First we'll need a class to represent the solar system. Let's call it System, and give it an attribute bodies. bodies will start as an empty array (ie. []).

class System

  @@bodies = []

  # add a celestial body to the bodies list
  def add(celestial_body)
    if @@bodies.include?(celestial_body)
     puts  "That body already exists in this solar system"
    else
      @@bodies << celestial_body
      puts "The new #{new_body} has been added to the solar system"
    end
  end

  def self.all
    @@bodies
  end

  def total_mass

    total_mass = 0

    @@bodies.each do |body|
      total_mass += body
    end
    return total_mass

  end

end
