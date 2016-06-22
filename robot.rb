# Explorer Mode
# Define a Robot Class
class Robot
# A robot has a name
  def name(name)
    puts name
  end
# A robot says "Hi!"
  def say_hi
    puts "Hi!"
  end

# A robot tells you his name
  def say_name(name)
    puts "My name is #{name}"
  end
end

# Define a BendingUnit class that inherits from Robot class
class BendingUnit < Robot

# A BendingUnit instance has a method called 'bend'
  def bend(objecttobend) # with one argument
    puts "Bend #{objecttobend}!" # that puts what the object is to bend
  end
end

# Define an ActorUnit class that inherits from Robot class
class ActorUnit < Robot

# An ActorUnit instance has a method called 'change_name'
# change_name method accepts an argument 'newname'

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def change_name(newname)
    @name = newname
  end
end

# Adventure Mode
# Create student array with names and heights
our_class = []
our_class << {name: "Sean", height: 73}
our_class << {name: "Isaiah", height: 68}
our_class << {name: "Daniel", height: 74}
our_class << {name: "Marie", height: 67}

# create Robots class with height default of 10
class Robots

  attr_accessor :name, :height

  def initialize(hash)
    @name = hash[:name]
    @height = hash[:height] || 10
  end
end

 # Make robots out of classmates using the Enumerable method
 class_robots = our_class.map {|mates| Robots.new(mates)}
