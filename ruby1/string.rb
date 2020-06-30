#encoding: UTF-8

# print String.methods


a = "Kelime 123 " * 3
puts a

a = "kelime bir iki"

# ilk kelime ilk harf büyük
# puts a.capitalize

# karakter listesi
# puts a.chars

# \t \n \r temizler
# puts a.chomp

# son harfi yok
# puts a.chop

# iceriği siler
# a.clear
# puts a

# karakter sayar
# puts a.count("e")

# karakterleri siler
# puts a.delete("e")

a = "KELİME Bir iki"

# all chars to lower
# puts a.downcase

# str to iter...
# a.each_char do |ch|
#     puts ch
# end

# a.each_char{|i| puts i, "*"}

# if "" then return true
# puts a.empty?()

# replace chars
# puts a.gsub("E", "*")

# is found ?
# puts a.include?("E")

# char first index number
# puts a.index "E"

# insert of index number
# puts a.insert 3," ok"

# char count with space
# puts a.length

# clear white spaces
# puts a.lstrip
# puts a.rstrip
# puts a.strip

# reverse characters
# puts a.reverse

# regex find
# puts a.scan(/[aeiou0-9]/)

# slice string of between
# puts a.slice(2..4)

# slice string of char
# puts a.split(" ")

# replace one char with regex
# puts a.sub(/([a-z]+)/, "*")

# convert to symbol
# a = "deneme"
# puts a.to_sym == :deneme


h = <<-DENEME
    Deneme
    123
        İs Here!!!
DENEME

puts h





