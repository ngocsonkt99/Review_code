puts "Hello"
# Biến được đặt tên bằng các kí tự chữ cái, chữ số và dấu gạch dưới “_”, nhưng không thể bắt đầu bằng chữ số và chữ cái in hoa.
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

# Biến trong Ruby có thể bắt đầu bằng một số kí tự đặc biệt và được gọi là sigil, các kí tự sigil dùng để chỉ ra phạm vi hoạt động của biến.
phone_name = "iphone"
# Biến không có kí tự đặc biệt nào được gọi là biến cục bộ, tức là chỉ có hiệu lực ở phạm vi trong từng phương thức, lớp… nhất định.
$capital_name = "Ha Noi"
# Kí tự $ cho biết biến đó là biến toàn cục, biến toàn cục có hiệu lực trong toàn bộ code Ruby.
@land_name = "IsLand"
# Kí tự @ cho biết biến đó là biến instance, biến này chỉ có hiệu lực trong một đối tượng.
@@species = "Cat"
# Cuối cùng là kí tự @@ tức biến class, tất cả các đối tượng của một class đều có thể truy xuất biến này.

p local_variables
# Biến local_variables là một mảng lưu trữ toàn bộ các biến cục bộ hiện có.
p global_variables.include? :$capital_name
# biến global_variables lưu toàn bộ các biến toàn cục, nhưng ở đây chúng ta không cho in ra toàn bộ vì số lượng biến toàn cục có sẵn rất nhiều, thay vào đó chúng ta dùng phương thức include? để kiểm tra xem biến $car_name của chúng ta có nằm trong danh sách đó hay không.
p self.instance_variables
# Ở trên chúng ta tham chiếu đến biến instance_variables, biến này lưu trữ toàn bộ biến instance trong đối tượng hiện tại, ở đây là những biến instance được khai báo trong chương trình – tức là @sea_name.
# Ngoài ra ở đây chúng ta còn dùng thêm biến self nữa, biến self tham chiếu đến đối tượng hiện tại đang được sử dụng, ở đây là chương trình chính, nếu bạn đã từng làm việc với con trỏ this trong C++, Java… thì self cũng giống như con trỏ this vậy. Thực ra ở đây bạn cũng không cần dùng đến self vì chúng ta đang gọi hàm ngay trong chương trình chính chứ không phải bên trong một phương thức hay lớp nào đó
p Object.class_variables
# Cuối cùng là biến class_variables,  biến này lưu trữ toàn bộ biến class có trong chương trình.

# Output
# [:phone_name]
# true
# [:@land_name]
# [:@@species]

# Biến cục bộ là biến chỉ có hiệu lực trong một phạm vi nhất định trong toàn bộ code Ruby, cụ thể là biến nằm bên trong hàm, phương thức, class.
# Biến toàn cục khác biến cục bộ ở chỗ là có hiệu lực trên toàn code. Biến toàn cục có tên bắt đầu bằng ký tự $. Biến toàn cục có thể sử dụng được trong cả module, phương thức, lớp…
# Biến instance là biến nằm trong một đối tượng cụ thể. Mỗi đối tượng có những biến instance riêng của chúng, biến instance có tên bắt đầu bằng kí tự @.
# Biến class là biến nằm trong một lớp. Những đối tượng được tạo ra từ lớp đó sẽ dùng chung biến class, biến class có tên bắt đầu bằng kí tự @@.

class Being

    @@is = true # bien class
    # khoi tao
    def initialize nm
        @name = nm # bien instance
    end
    # tra ve chuoi
    def to_s
        "This is #{@name}"
    end
    # tra ve bien class cua lop
    def does_exist?
        @@is
    end
end
# khai bao 3 object thuoc lop Being, moi object nhan 1 tham so @name rieng cua chung
b1 = Being.new "Being 1"
b2 = Being.new "Being 2"
b3 = Being.new "Being 3"

puts b1, b2, b3
# Phương thức does_exist? sẽ trả về giá trị của biến @@is, do cả 3 đối tượng này đều dùng chung biến class @@is nên kết quả trả về là như nhau.
p b1.does_exist?
p b2.does_exist?
p b3.does_exist?

# Output
# This is Being 1
# This is Being 2
# This is Being 3
# true
# true
# true
