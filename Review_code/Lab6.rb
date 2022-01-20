# mảng số
numbers = [1,3,5,7]
# mảng tên
names = ["Son", "Tam", "Toan", "Duc", "Thanh"]
puts names[3] # Duc
names[3] = "Nguyễn Văn Duc"
puts names[3] # Nguyễn Văn Duc
# mang co the chua du lieu bat ky
mang=[1, 1.2, "Abc"]
# them phan tu vao cuoi mang sd << or push
mang << 10
mang.push(10)
# chen phan tu moi vao vi tri cu the
mang.insert(0,11) # vi tri dau tien trong mang voi gia tri 11

arr = [1,2, "A", "B"]
a = arr.pop                 # xóa phần tử cuối, đồng thời lưu lại vào a
b = arr.delete_at(1)        # xóa phần tử chỉ số 1, đồng thời lưu lại vào b
puts arr
# Lay phan tu theo index
arr = [1,3,5,7,9,11]
subarr = arr[1..4]
puts subarr.inspect # output mang [3,5,7,9]
# merge mang
c = [1, 2, 3, 4]
d = [4, 5]
e = c + d
print c.inspect # output mang [1, 2, 3, 4, 4, 5]
# tru 2 mang
f = [1, 2, 3, 4]
g = [4, 5, 7]
h = f - g # out put [1, 2, 3], cac phan tu thuoc f khong thuoc g
# tích
i = [1,2,3]
puts (i * 3).inspect # [1, 2, 3, 1, 2, 3, 1, 2, 3]
# su dung & lay diem giao nhau trong mang
j = [2, 3, 7, 8]
k = [2, 7, 9]
print j & k # output [2, 7]
# đảo chiều
arr = [1, 2, 3]
puts arr.reverse.inspect # output [3,2,1]

# array.length	Trả về số lượng phần tử trong mảng
# array.sort	Trả về mảng mới có sắp xếp
# array.uniq	Trả về mảng mới các phần tử trùng nhau giữ lại một
# array.uniq!	Phần tử trùng nhau giữ lại một
# array.freeze	Ngăn cản sửa đổi mảng
# array.include?(obj)	Trả về true nếu có phần tử với giá trị obj
# array.max	Trả về phần tử lớn nhất
# array.min	Trả về phần tử nhỏ nhất

# duyệt mảng
arr = [3,5,6,78]
for x in arr
  puts "Giá trị: #{x}"
end

a = [ "a", "b", "c" ]
a.each {
    |x|                 # định nghĩa biến lưu phần tử mảng khi duyệt qua
    print x, " -- " # output: a -- b -- c --
}

a = [ "a", "b", "c" ]
a.each_index {
    |index|
    puts "phần tử #{index} có giá trị #{a[index]}"
}
# output
# phần tử 0 có giá trị a
# phần tử 1 có giá trị b
# phần tử 2 có giá trị c

a = [[1,2,3], [4,5,6], [7,8,9]]
puts a[2][2]                # Truy vấn vào mảng con thứ ba [7,8,9], lấy phần tử thứ ba của mảng con này "9"
# output: 9
