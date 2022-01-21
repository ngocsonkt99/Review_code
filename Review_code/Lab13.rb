# Proc và Lambda trong Ruby
# Ruby cung cấp khả năng tạo ra một khối lệnh gom nó trở thành một đối tượng - đối tượng này gọi là proc,
# nó chứa trong nó biến, các tác vụ và như vậy thông qua đối tượng proc bạn chạy khối lệnh bất kỳ khi nào muốn
xinchao = Proc.new do |name|
    puts "Welcome #{name}"
end
xinchao.call "Ung Son" # Welcome Ung Son
# Proc là một đối tượng chứ không phải phương thức, nên có thể làm tham số cho các phương thức ...
tong = Proc.new do |a, b|
    a + b
end
hieu = Proc.new do |a, b|
    a - b
end
def tinhtoan(pheptinh, a, b)
  puts "Kết quả tính: #{pheptinh.call(a, b)}"
end
# Sử dụng Proc làm tham số của phương thức
tinhtoan(tong, 10, 23) # Kết quả tính: 33
tinhtoan(hieu, 1, 20) # Kết quả tính: -19

# Biểu thức Lambda rất giống với Proc, tạo Lambda bằng từ khóa lambda
talk = lambda {puts "Hi"}
# cách khác
talk = ->() {puts "Hi"}
talk.call # Hi
# Lambda còn gọi là phương thức vô danh, nó có điểm khác với Proc là kiểm tra chính xác tham số ngay khi gọi
xinchao = -> (name) {
    puts "Xin chào #{name}"
}
xinchao.call("UNS") # Xin chào UNS
# xinchao.call # gọi lambda thiếu tham số sẽ lỗi trong case này
# Nhưng nếu gọi lambda thiếu tham số sẽ lỗi, ví dụ : xinchao.call, còn đối với Proc thì không kiểm tra tham số khi gọi
xinchao = Proc.new do |name|
    puts "Xin chào #{name}"
end
xinchao.call("Son") # Xin chào Son
xinchao.call        # Xin chào        # gọi Proc không tham số, không kiểm tra tham số khi gọi, xinchao vẫn chạy bình thường
