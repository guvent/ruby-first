# deneme

=begin
    deneme 
    comment
    lines


print "deneme"
print "\n"

puts "ilk satir"
puts "ikinci satir"

a = "dneme"
b = 3
c = 3.14
d = true
e = false
isNull = nil

print "sayi girin: "

firstNumber = gets.to_i

print "ikinci sayi: "

secondNumber = gets.to_i

puts firstNumber.to_s + " + " + secondNumber.to_s + " = " +(firstNumber+secondNumber).to_s



a = "İlk Deneme"

puts a.length()
puts a.index("m")

puts a[0,5]

langs = ["Java", "Python", "Go", 2, 4.3, false]


puts langs[0]
puts langs[2]
puts langs[5]
puts langs[-2]

cities = {
    "Ankara" => 5,
    "Manisa" => 21,
    "Muş" => 3
}

puts cities
puts cities["Manisa"]

def merhaba
    puts "ok"

end

def selam()
    puts "yes"

end


merhaba()
merhaba
selam()
selam


def toplama(a,b)
    puts "Toplam: " + (a+b).to_s
end

toplama(4,6)
toplama 4, 6


def merhaba(isim="-yok-", soyisim="")
    puts "İsim: " + isim + " | Soyisim: "+soyisim
end

merhaba "dneme", "ok"
merhaba

def kare(x)
    return x ** 2
end

def kup(x)
    return x ** 3
end

puts kup 4
puts kup(4)

puts kare kup 4
puts kare(kup(4))


isok = false

if isok
    puts "allrights!!"
else
    puts "none!!!"
end

# chomp is \n exclude
option = gets.chomp()

if option == "1"
    puts "first"
elsif option == "2"
    puts "second"
else
    puts "none"
end


print "işlemi yazınız:"
option = gets.chomp()

print "ilk sayı:"
first = gets.to_f
print "ikinci sayı:"
second = gets.to_f

if option == "+"
    print "toplama işlemi sonucu: "
    puts (first+second)
elsif option == "-"
    print "cıkarma işlemi sonucu: "
    puts (first-second)
elsif option = "*"
    print "çarpma işlemi sonucu: "
    puts (first*second)
elsif option = "/"
    print "bolme işlemi sonucu: "
    puts (first/second)
else
    puts "hatali işlem!!!"
end

print "işlemi yazınız:"
option = gets.chomp()

print "ilk sayı:"
first = gets.to_f
print "ikinci sayı:"
second = gets.to_f

case option
when "+"
    print "toplama işlemi sonucu: "
    puts (first+second)
    
when "-"
    print "cıkarma işlemi sonucu: "
    puts (first-second)
    
when "*"
    print "çarpma işlemi sonucu: "
    puts (first*second)
    
when "/"
    print "bolme işlemi sonucu: "
    puts (first/second)
    
else
    puts "hatali işlem!!!"
    
end



i = 1

while i < 10
    puts "'i' is : " + i.to_s
    i += 1
end


langs = ["Ruby", "Java", "C++", "Python"]

for lang in langs
    puts lang
end


langs = ["Ruby", "Java", "C++", "Python"]

langs.each do |lang|
    puts lang
end


for number in 1..10
    puts number
end

4.times do |number|
    puts number
end

file = File.open("liste.txt", "r")

# puts file.read

# puts file.read 2

puts file.readchar
puts file.readchar
puts file.readchar
puts file.readchar

file.close




file = File.open("liste.txt", "r")

puts file.readline
puts file.readline
puts file.readline

file.close


File.open("liste.txt", "r") do |file|
    puts file.read
end


File.open("liste.txt", "r") do |file|
    for line in file.readlines
        puts line
        puts "------"
    end
end

File.open("liste.txt", "a") do |file|
    file.write("husman\n")
    file.write("oktay\n")
end

array = [1,2,3,4,5]


begin
    puts array["dnemee"]
    puts "array ok.."

    a = 4/0
rescue => TypeError
    puts "error array type!"
rescue => ZeroDivisionError
    puts "error division!"
end
class Person
    # r/w access 
    attr_accessor :name, :surname, :age

    # read only
    attr_reader :name, :surname, :age

    # write only
    attr_writer :name, :surname, :age
    
end

class Person
    attr_accessor :name, :surname, :age

    def initialize(name, surname, age)
        @name = name
        @surname = surname
        @age = age

        puts "init person obj...."
    end

    def isNameFound(find_name)
        return (@name==find_name) ? "Var" : "Yok"
    end
end

# person1 = Person.new
# person1.name = "Kamil"
# person1.surname= "Osman"
# person1.age = 21

# person2 = Person.new
# person2.name = "Veli"
# person2.surname = "Husman"
# person2.age = 30

person3 = Person.new("Ahmet", "Mehmet", 44)

puts person3.name

puts person3.isNameFound("Ahmet")
puts person3.isNameFound("Osman")



=end


require_relative "ilkmodul"
include Benimkiler
include BaskaModul

Benimkiler.hello "kamil"
BaskaModul.naber "okeeyy"



