# if else elsif
num = 10
if num == 1
  puts "Number is 1"
elsif num == 5
  puts "Number is 5"
elsif num == 9
  puts "Number is 9"
else
  puts "Not found"
end

# unless: hiểu là ngược với if
a = 100
unless a < 10
 puts "Yes"
else
 puts "No"
end
# Output: "Yes"

a = 100
puts "a chia hết cho 2" if a % 2 == 0 # true => output
puts "a không chia hết cho 2" unless a % 2 == 0 # false

# case with
dow = 5
case dow
when 0,7
  puts "Ngày nghỉ"
when 1
  puts "Học Node.js"
when 2,3
    puts "Học Java"
else
    puts "Học Ruby"
end
# Output: "Học Ruby"

# Dải dữ liệu
# Một dải dữ liệu biểu diễn một tập có thứ tự như dải số từ 0 đến 10, từ 100 đến 200, dải chữ từ a đến z. Trong Ruby có toán tử đặc biệt là .. và ... để tạo ra dải dữ liệu.
# Toán tử  .. tạo dải gồm cả điểm mút bên phải, trong khi ... thì dài không gồm điểm mút phải (giá trị lớn).
a = 1..10   # gồm các giá trị 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
b = 1...10  # gồm các giá trị 1, 2, 3, 4, 5, 6, 7, 8, 9

# Phương thức to_a để chuyển một dải thành mảng, tiện dụng khi cần in ra
c = ("a".."d").to_a
puts c # ta co mang: [a, b, c, d]

age = 22
case age
when 0..14
  puts "Trẻ em"
when 15..24
  puts "Thanh thiếu niên"
when 25..64
  puts "Người lớn"
else
  puts "Người cao tuổi"
end
