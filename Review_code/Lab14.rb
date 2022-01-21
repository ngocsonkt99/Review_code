# Ruby cung cấp lớp File để làm việc với file
# tạo một file tên test.txt, file mở với chế độ w+ nghĩa là cho phép đọc và ghi.
file = File.new("test.txt", "w+")
# Đóng file
file.close
# Các chế độ mở file
#       r chế độ chỉ đọc, bắt đầu từ đầu file - đây là chế độ mặc định
#       r+ chế độ đọc - ghi, bắt đầu từ đầu file
#       w chỉ ghi, file đã tồn tại thì bị cắt về rỗng
#       w+ chế độ đọc ghi, file tồn tại thì bị cắt về rỗng
#       a ghi ghi, nối thêm dữ liệu nếu đã tồn tại
#       a+ đọc, ghi nối thêm dữ liệu nếu đã tồn tại

# mở file đã có
file = File.open("filename", "w+")

# Lưu dữ liệu ra file
# Có thể dùng phương thức puts để thêm chuỗi vào file với ký tự xuống dòng ở cuối,
# dùng write lưu chuỗi nhưng kh có ký tự xuống dòng ở cuối.
file = File.new("test2.txt", "w+") # Tạo file mới cho phép đọc và ghi
file.puts("ungson.hashnode.dev")
file.close

File.open("test.txt", "a+") { # ghi dữ liệu ra file đã tồn tại thì mở và lưu
    |file| file.puts("Abc")
}

# Để đọc dữ liệu file dùng phương thức lớp File.read
s = File.read('test2.txt')
puts s
# Nếu muốn đọc từng dòng một của file dùng readlines
File.readlines("test2.txt").each {
  |line| puts " --- #{line}"
}

# Xóa file: Dùng phương thức delete
File.delete("test2.txt")
# Kiểm tra file đã tồn tại dùng phương thức File.file?
File.open("test.txt") if File.file?("text.txt")
# Đọc thông tin file
#       size trả về cỡ file (byte)
#       zero? trả về true nếu file tồn tại và cỡ 0 byte
#       readable? có thể đọc
#       writable? có thể ghi
#       executable? có thể chạy
puts File.readable?("test.txt")   # true
puts File.writable?("test.txt")   # true
puts File.executable?("test.txt") # false
