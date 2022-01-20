# Method (hàm, phương thức) in ruby
def xinchao
    puts "hello"
end

xinchao                 # gọi phương thức 3 lần
xinchao
xinchao
# output:
# hello
# hello
# hello

def tinhtong(a, b)
    puts a + b
end
tinhtong(1,2) # output: 3 (tham số  1,2)

def tinhtong(a, b = 3)
    puts a + b
end
tinhtong(1) # output 4 (tham số a = 1 và giá trị default của tham số 2(b) là 3)

def tinhtong a, b = 5
    puts a + b
end
tinhtong 2, 10 # output 12 (lược bớt ngoặc () )

def sum *num
    s = 0;
    num.each {|v| s+=v}
    puts s
end
sum(1,2,3)          # tryền vào mảng 3 phần tử  => output: 6
sum(100)            # truyền vào mảng 1 phần tử  => output: 100

def sum *num
    s = 0;
    num.each {|v| s+=v}
    return  s
end
kq = sum(1,2,3)
puts kq # 6

# Trong Ruby có 4 loại phạm vi (biến): biến cục bộ (local), biến toán cục (global), trong instance và trong class
# cục bộ local
s = 1000
def sum *num
    s = 0;                      # biến s khai báo trong hàm, nó chỉ có hiệu lực trong hàm,
                                # nó khác với các biến ngoài hàm
    num.each {|v| s+=v}         # biến v cục bộ trong vòng lặp
    return  s
end
kq = sum(1,2,3)
puts s # in ra 1000, biến s này độc lập với s trong hàm

# toàn cục global
$x = 42             # $x là biến toàn cục
def change
  $x = 8            #$ truy cập biến toàn cục từ hàm
end
change # chạy method change
puts $x # outputs 8

# hhhàm  đệ quy
def giaithua(n)
  if n<= 1
    return 1                        # dừng đệ quy
  else
    return n * giaithua( n - 1 )    # gọi đệ quy
  end
end
puts giaithua(5) # output: 120
