
a = 3

# if a < 3
#     puts "lower"
# elsif a > 3
#     puts "upper"
# else
#     puts "other"
# end

# unless a < 4
#     puts "unless"
# else
#     puts "is ok"
# end

# 4 < 3 unless puts "fail"
# 3 < 4 unless puts "is true"

# 6 < 3 if puts "fail"
# 3 < 6 if puts "is true"

# case a
# when 3
#     puts "three"
# when 2
#     puts "two"
# else
#     puts "NaN"
# end

# case a
# when 0..3
#     puts "0 between 3"
# when 3..6
#     puts "3 between 6"
# else
#     puts "invalid"
# end

i = 1
i ||= 4
puts i

arr ||= []
dict ||= {}

h = {}
h["b"] = "de"
h[:a] ||= "ok"

puts h

a &&= 8
puts a 
a &&= 5
puts a
a ||= 9
puts a

