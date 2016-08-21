#!/usr/bin/ruby

# What happens if you rename no_of_customers to NOC - nothing it still works, but you don't want to do it - best practice

class Customer
  @@no_of_customers=0

  # define a class method to getter class variable
  def self.get_customers
    @@no_of_customers
  end
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
  def total_no_of_customers()
    @@no_of_customers = @@no_of_customers + 1
    puts "Total number of customers: #@@no_of_customers"
  end
end

puts Customer.get_customers

# Create Objects
cust1=Customer.new("1", "Pradeep", "New York City, NY")
cust2=Customer.new("2", "Sheikh", "Bronx, NY")

# Call Methods
cust1.total_no_of_customers()
puts Customer.get_customers
cust2.total_no_of_customers()

puts Customer.get_customers