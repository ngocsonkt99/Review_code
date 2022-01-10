a = " chao"
puts a
b,c = 1,2
puts "Sum a and b: #{b + c}"
welcome = a + " son"
puts welcome
puts welcome * 5
d = 2022
print "Toi se doan so tuoi cua ban\n"
print "Vui long nhap nam sinh cua ban:"
ns = gets
puts "Neu nam sinh cua ban la #{ns}"
puts ns.to_f
# chuyen doi sang float
e = d - ns.to_i
# chuyen sang int de tinh
puts "Ban #{e} tuoi nha"
