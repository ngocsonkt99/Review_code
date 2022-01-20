product = {"name" => "samsung", "price" => 500, "color" => "white"}
puts product["name"] # output "samsung"

# hash.delete(key)	Xóa phần từ có chỉ số key
# hash.key(value)	Trả về key của value trong hash, nếu không thấy trả về nil
# hash.invert	    Tạo hash mởi bằng cách đảo thứ tự hash gốc
# hash.keys	      Trả về mảng chứa các key
# hash.values	    Trả về mảng chứa các value
# hash.length	    Trả về số phần tử hash
xe = {
  bmw: { year:2016, color:"red"},
  mercedes: { year:2012, color:"black"},
  porsche: { year:2014, color:"white"}
}

puts xe[:bmw][:color] # output: "red"

# Symbol trong ruby
a = :Laptop         # a lưu trữ một Symbol, symbol :Laptop phát sinh
b = :Laptop         # b lưu giữ một Symbol, symbol này chính là đối tượng lưu trong a chứ không phát sinh mới
product = {:name => :Iphone, :price => 500, :color => "white"}
puts product[:name] # Iphone
# khá giống dữ liệu kiểu json
product = {name:"Iphone", price:500, color:"white"}
puts product[:name] # Iphone

# Duyệt phần tử - Iterator
sizes = {svga:800, hd:1366, uhd:3840}
sizes.each { |key, value| puts "#{key}=>#{value}" } # Khối tham số có thể trích xuất key và value
# Đối với chuỗi có thể dùng cách tương tự duyệt qua các ký tự với each_char

# lặp theo số lần "times"
5.times do
  puts "Xin chào" # out 5 lần xin chao
end
