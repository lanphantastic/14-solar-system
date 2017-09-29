# Let's write a program that can help us figure out how much stuff it has by keeping a list of all the celestial bodies in our system and adding up their total mass.

# First we'll need a class to represent the solar system. Let's call it System, and give it an attribute bodies. bodies will start as an empty array (ie. []).

# In relation to the student and professor in-class example:

# system --> main
# bodies --> person
# professor & students --> moons, stars, planets

require_relative 'planets'
require_relative 'moons'
require_relative 'stars'

class System

  @@bodies = []

  # add a celestial body to the bodies list
  def self.add(celestial_body)
    if @@bodies.include?(celestial_body)
     puts  "That body already exists in this solar system"
    else
      @@bodies << celestial_body
      puts "The #{celestial_body.name} has been added to the solar system."
    end
  end

  def self.all
    @@bodies
  end

  def self.total_mass

    total_mass = 0

    @@bodies.each do |body|
      total_mass += body.mass
    end
    return "The total mass is #{total_mass} kg."

  end

end

earth = Planet.new("Earth",25,24,12) # (name, mass, hours, year)
moon  = Moon.new("Moon", 12, 12, earth) #(name, mass, month, planet)
sun   = Star.new("Sun", 5000, "G-type") # (name, mass, type)

System.add(earth)
System.add(moon)
System.add(sun)

puts

puts sun.inspect
puts moon.inspect
puts earth.inspect

puts

puts System.all.inspect
puts
puts System.total_mass

puts 
