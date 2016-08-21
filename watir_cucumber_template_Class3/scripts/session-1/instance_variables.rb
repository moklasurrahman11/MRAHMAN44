#!/usr/bin/ruby

class Customer

  # attr_accessor means read and write
  attr_accessor :cust_id,:cust_name
  #attr_reader means only read
  attr_reader :cust_addr

  def initialize(id, name, addr)
    @cust_id=id
    @cust_name=name
    @cust_addr=addr
  end

  def display_details()
    puts "Customer id #@cust_id"
    puts "Customer name #@cust_name"
    puts "Customer address #@cust_addr"
  end

  # def get_customer_name
  #   @cust_name
  # end
  #
  # def set_customer_name(cust_name)
  #   @cust_name = cust_name
  # end

end

# Create Objects
cust1=Customer.new("1", "Pradeep", "New York City, NY")
cust2=Customer.new("2", "Sheikh", "Bronx, NY")

# Call Methods
cust1.display_details()
cust2.display_details()

#Getter and Setter methods

# puts cust1.get_customer_name
#
# cust1.set_customer_name("Pradeep1")
# puts cust1.get_customer_name

puts cust1.cust_name

cust1.cust_name = "Pradeep1"

puts cust1.cust_name

cust1.cust_addr = "xyz"

