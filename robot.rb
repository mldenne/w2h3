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
