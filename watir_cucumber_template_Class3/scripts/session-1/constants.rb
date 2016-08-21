#!/usr/bin/ruby
# Constants begin with an uppercase letter. Constants defined within a class or module can be accessed from within
# that class or module, and those defined outside a class or module can be accessed globally
# Constants may not be defined within methods. Referencing an uninitialized constant produces an error.
# Making an assignment to a constant that is already initialized produces a warning.

# Difference between constant and global variable is that constant cannot be changed inside method, global can be
# A class variable can be accessed via a class method only

class Example
  VAR1 = 100
  VAR2 = 200

  # Variables can be declared with UPPER CASE (as in the case of constants), but not recommended
  @@VAR3=300
  def self.VAR3
  @@VAR3
  end

  def show
    puts "Value of first Constant is #{VAR1}"
    puts "Value of second Constant is #{VAR2}"
  end
end

# Create Objects
object=Example.new()
object.show
puts Example.VAR3



