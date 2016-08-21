# range = (1..4) # [1,2,3,4]
#
# squared_array = range.map { |e| e*e}
# p squared_array
#
arr = (1..10)

#puts arr.select {|ele| ele.even? }
# puts arr.reject {|ele| ele.even? }

# From numbers 1 to 100, if you find a number divisible by 3, print fizz, divisible by 5 print buzz and divisible 3 &5
# print fizzbuzz

# p (1..100).find_all { |ele|  ele % 3 == 0 }
# p (1..100).find_all {|ele| ele % 3 ==0 and ele % 5 == 0}

string_array = %w(abc bcd 456 efg dfdsf dsfdsf abcde) # ["abc","bcd"....]

p string_array.find_index {|ele| ele.include? "e"}
#
p string_array.find_all {|ele| ele.include?"e"}

# p %w(abc def ghi jkl mno pqr).grep 'abc'