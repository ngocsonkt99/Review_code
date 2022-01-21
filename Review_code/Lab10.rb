# extend in ruby
# class Cat < Animal
# # Lớp Cat kế thừa Animal
# end


class Animal
  def initialize(name, color)
    @name = name
    @color = color
  end
  def speak
    puts "Hi"
  end
end
# lớp con có thể định nghĩa nó có các phương thức, biến riêng của nó, thậm chí định nghĩa lại (overriding) phương thức nào đó từ lớp cha
class Cat < Animal
  attr_accessor :age            # thuộc tính riêng trong lớp kế thừa
  def speak                     # nạp chồng (overriding) phương thức
    puts "Meow"
  end
end
c = Cat.new("Mồn lèo", "yellow")
c.age = 2
c.speak                         # phương thức speak trong Cat chạy chứ không phải trong Animal chạy
# outputs "Meow"

# Ở ví dụ trên, ở lớp Cat định nghĩa lại (overriding) phương thức speak,
# trong trường hợp nếu muốn thi hành lại code của phương thức này ở lớp cơ sở và bổ sung thêm code mới thì dùng đến từ khóa supper
# supper sử dụng phổ biến ở phương thức khởi tạo (giống Java).
class Animal
  def initialize(name)
    @name = name
  end
end
class Cat  < Animal
  def initialize(name, age)
    super(name)                      # thi hành hàm khởi tạo của lớp cơ sở
    @age = age
  end
  def to_s
    "#{@name} is #{@age} years old."
  end
end

# có thể định nghĩa các toán tử (quá tải toán tử) để thực hiện phép toán trên các đối tượng được tạo ra.
class Shape
  attr_accessor :h, :w
  def initialize(h, w)
    self.h = h
    self.w = w
  end
  # Định nghĩa toán tử + để thi hành phép toán a + b, trả về đối tượng mới
  def +(other)
    Shape.new(self.h+other.h, self.w+other.w)
  end
end
a = Shape.new(7, 4)
b = Shape.new(9, 20)
c = a+b  # thực hiện phép toán, tạo một đối tượng mới từ 2 đối tượng gốc
puts c.h # outputs 16
puts c.w # outputs 24

# Các thành viên trong lớp có thể được xác định nó có thể truy cập như thế nào từ các đối tượng khác, từ lớp kế thừa ...
# Trong Ruby có ba mức điều khiển truy cập là public, private, protected
class Person
    def initialize(age)
      @age = age
    end
    def show
      # có thể truy cập các phương thức private từ lớp (days_lived)
      puts "#{@age} years = #{days_lived} days"
    end

    private                 # từ khóa private (riêng tư)
    def days_lived          # days_lived là phương thức private
      @age * 365
    end
end
p = Person.new(42)
p.show                      # outputs: 42 years = 15330 days
p.days_lived                # cố tính truy cập phương thức private từ bên ngoài sẽ lỗi
