# Class in ruby
class Person
  def initialize # pt khởi tạo
    puts "Hi"
  end
end
# tạo 2 đối tượng p1, p2 (instance)
p1 = Person.new
p2 = Person.new

# Output:
# "Hi"
# "Hi"

class Animal
  @age = 0                    # instance variable
  def initialize(name, age)
    @name = name              # instance variable
    @age = age                # instance variable
  end
end
ob = Animal.new("Bull", 2)

class Cat
  def bark                    # định nghĩa phương thức instance
    puts "Meoo!"
  end
end
d = Cat.new
d.bark                        # Gọi phương thức của đối tượng


class Sanpham
    def initialize(name)
      @name = name
    end
    # Định nghĩa getter để đọc biến @name
    def name
      @name
    end
    # Định nghĩa setter để cập nhật biến
    def name=(name)
      @name = name
    end
end
p = Sanpham.new("Iphone")
p.name = "Laptop"        # Gọi setter
puts p.name              # Gọi getter
# Output: Laptop

# self là một biến đặc biệt trỏ đến đối tượng "sở hữu" mã hiện đang thực thi. Ruby sử dụng self ở mọi nơi:
#       Đối với instance variables: @myvar
#       Đối với method và constant lookup
#       Khi khai báo methods, classes and modules.

class Xinchao
    # Phương thức lớp có tên hello
    def self.hello
        puts "Xin chào"
    end
end
# Gọi phương thức lớp qua tên lớp
Xinchao.hello # Output: "Xin chào"

# biến lớp (không thuộc về đối tượng cụ thể) có thể truy cập thông qua tên lớp. @@name
class Product
    @@total = 10
    def self.total
        @@total
    end
    def self.total=(total)
        @@total = total
    end
end
Product.total = 100
puts Product.total # output: "100"

# Có thể tạo ra các hằng số trong lớp bằng khai báo tên với ký tự đầu tiên viết In hoa.
# Ví dụ PI, để truy cập hằng dùng tên tên lớp và ký hiệu ::
class Calc
  PI = 3.14
end
puts Calc::PI

# Phương thức to_s là xây dựng sẵn trong Ruby, mọi đối tượng đều có phương thức này,
# phương thức này được gọi tự động khi cần lấy thông tin đối tượng (chuỗi thông tin).
class Product
end
p = Product.new
puts p # Output: #<Product:0x00007fcbed81db78>
# Có thể định nghĩa lại to_s để lớp không sử dụng hàm xây dựng mặc định
class Product
  @name = ''
  def initialize
    @name = 'Iphone'
  end
  def to_s
    "Sản phẩm #{@name}"
  end
end
p = Product.new
puts p # output: Sản phẩm Iphone

# Trong Ruby có cơ chế để tự động sinh ra các getter/setter cho các biến instance, đó là sử dụng phương thức attr_accessor,
# khai báo sử dụng từ khóa attr_accessor rồi liệt kê các các thuộc biến dạng :name, cách nhau bởi ,
# Các hàm setter/getter dạng này nếu truy cập từ trong lớp thì dùng seft.
class Person
  attr_accessor :name, :age                     # khai báo này tự động có các phương thức name,name=, age, age=
  def initialize(name, age)
    @name = name
    @age = age
  end
  def change(n, a)
    self.name = n                               # truy cập accessor setter trong lớp thì cần dùng self.
    self.age = a
  end
  def show_info
    puts "#{self.name} is #{self.age}"          # truy cập accessor getter trong lớp thì cần dùng self.
  end
end
p = Person.new("David", 28)
p.change("Bob", 42)
p.show_info                                     # output: Bob is 42
puts p.age                                      # Truy cập getter accessory - output: 42
