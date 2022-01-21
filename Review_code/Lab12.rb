# Struct OStruct và lớp Math Time trong Ruby

# Tạo cấu trúc Point có hai thuộc tính x và y
Point = Struct.new(:x, :y)
# Tạo đối tượng từ cấu trúc
diem1 = Point.new(1,2)
diem2 = Point.new(3,4)
# cấu trúc tự động có các setter/getter để truy cập thuộc tính
puts diem2.y # outputs: 4
puts diem1.x # outputs: 1

# OpenStruct còn gọi là OStruct là một thư viện của Ruby, nó giống Struct ngoại trừ không yêu cầu định nghĩa trước các thuộc tính.
# OStruct cần nạp thư viện "ostruct" bằng từ khóa require
require 'ostruct'
person = OpenStruct.new
person.name    = "Son"
person.age     = 23
person.pension = 300
puts person.name     # -> "Son"
puts person.age      # -> 23
puts person.address  # -> nil
# có thể khởi tạo trước một số thuộc tính và truy cập các thuộc tính với [] khi tên thuộc tính là các Symbol
person = OpenStruct.new(name:'Ung Son', 'age' => 23)
person[:age]
puts person.name # output: Ung Son

# thuộc thư viện chuẩn của Ruby: Math, nó cung cấp các phương thức hăng số liên quan đến toán học như hằng số Pi, tính căn bậc 2 với sqrt, tính sin, cos ...
puts Math.sqrt(4) # output: 2.0

# Ngày - giờ hiện tại
t = Time.now
puts t
# Lấy năm, tháng, ngày của t now
puts t.year
puts t.month
puts t.day

# Tạo mới một đối tượng time
t = Time.new(1999, 7, 14)
puts t.year # 1999
# Lấy thứ của đối tượng time
puts t.wday

# Lấy ngày trong năm của đối tượng time
puts t.yday
