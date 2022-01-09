puts "Hello"
b = 2
a = "Xin chao"
puts a
puts "Thu #{b}, #{a} ngoc son"

c = 20
d = 6
puts c += d
# luc nay c = 26 khi sd phep gan +=
puts c + d

puts 10 - d
puts c -= d
# luc nay c = 20
puts c / d
puts c /= d
# luc nay c = 3
puts c * d
puts c *= d
# luc nay c = 18

puts "--------#{c}----------"
e = 20.0
f = 21.5
puts e / 3
puts e /= 3
puts f % 3
puts f %= 3
puts 2 ** b
puts b **= b

g = 1
h = 2
g,h = h,g
puts g, h
