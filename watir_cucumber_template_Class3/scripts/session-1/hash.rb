# Create
hsh = { a:1,b:2,c:3}
hsh[:d] = 4
hsh1 = { :a => 1, :b => 2, :c => 3}

hsh3 = Hash.new

hsh4 = {a: {b:2,c:3}, d: [1,2,3], e: {f: [{g:4,h:5},{i:6}]}}


# Read
puts hsh.keys
puts hsh.values
puts hsh[:a]

puts hsh4[:a][:b]
puts hsh4[:e][:f][1][:i]

#Update
hsh[:a] = 3
puts hsh


#delete
hsh.clear
puts hsh

