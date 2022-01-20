# boolean data type
isAdmin = true

# Toan tu logic
# ! đại diện cho "NOT",
# &&  đại diện cho "VÀ"
# ||  đại diện cho "HOẶC"
true && true #=> true
true && false #=> false
false || true #=> true
!true #=> false
!false #=> true

a = 1
b = 2
if a > 0 && a > b
  puts "chinh xac"
else
  puts "khong chinh xac"
end

# Toan tu so sanh: ==; !=; >; <; >=; <=
1 == 1 #=> true
"mot" == "mot" #=> true
1 == 2 #=> false
4 > 3 #=> true
hai = 2
ba = 3
hai > ba #=> false
ba >= hai #=> true
hai == ba #=> false

# nếu gọi lớp trên một biến, có thể xem đó là một chuỗi, một số nguyên, v.v.
hai.class
ba.class
if hai.class == ba.class # => true
  puts "true"
else
  puts "false"
end
