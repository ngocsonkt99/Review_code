# Module in ruby
# Module là nơi chứa tập hợp các phương thức có thể được sử dụng lại bởi các lớp. Khai báo module như sau, ví dụ tạo module có tên Namemodule:
module Namemodule
    # khai báo các hàm
end
# Để đưa các phương thức của module vào lớp, sử dụng từ khóa include
module Mymodule
  def tong(a, b)
    puts a + b
  end
  def hieu(a, b)
    puts a - b
  end
end
class MyMath
  include Mymodule
end
m = MyMath.new
m.tong(1,2)     # 3
m.hieu(2,3)     # -1

# Trong Ruby có sẵn nhiều Mixins định nghĩa sẵn để bạn sử dụng, ví dụ mixin Comparable sử dụng để thêm các toán tử so sánh vào lớp (<, <=, ==, >=, >).
# Để mixin này hoạt động, cần định nghĩa phương thức <=>
class Cat
  attr_accessor :name, :age
  include Comparable
  def initialize(n, a)
    self.name = n
    self.age = a
  end
  # hàm này định nghĩa hai toán hạng phục vụ cho  Comparable
  def <=>(other)
    self.age <=> other.age
  end
end
c1 = Cat.new("Bob", 3)
c2 = Cat.new("Lucy", 7)
puts c1 < c2 # output: true

# Module ngoài chức năng gộp thành nhóm các phương thức để sử dụng bởi lớp, nó cũng dùng để nhóm các lớp vào một tên module, kỹ thuật này gọi là Namespace.
# Để truy cập đến một lớp trong Module dùng ký hiệu ::
# Module Mamal định nghĩa hai lớp Dog, Cat
module Mammal
  class Dog
    def speak
      puts "Woof!"
    end
  end
  class Cat
    def speak
      puts "Meow"
    end
  end
end
a = Mammal::Dog.new
b = Mammal::Cat.new
a.speak  # outputs: "Woof!"
b.speak  # outputs: "Meow"
