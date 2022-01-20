# sum cac so tu 0-30
i = 0
sum = 0

while i <= 30
    sum += i
    i += 1
end
puts sum
# in so chan tu 20 - 50
a = 20
until a > 50
  puts "a = #{a}"
  a +=2
end
# 1-10
for i in (1..10)
  puts i
end
# break out neu i > 30
for i in 1..50
  break if i > 30
  puts i
end
# next bo qua va lap tiep
for i in 0..10
  next if i %2 == 0
  puts i
end
# lap cho den khi gap break, kha giong while
x = 0
loop do
  puts x
  x += 1
  break if x > 10
end
