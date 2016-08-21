class Human
attr_accessor :x,:y
  def initialize(a,b)
    @x = a
    @y = b
  end
  def human_add
    @x+@y
  end

end

myclass1 = Human.new(2,3)
myclass2 = Human.new(3,4)
# puts myclass1.human_add
# puts myclass2.human_add

puts myclass1.x
myclass1.x = 10
puts myclass1.x


