
# nums = [1,2,3,4,5]

# nums.collect! {|e| e+= 5}
# puts nums.inspect


# nums = ["1","2","3","4","5"]

# nums.collect! {|e| e+= "*"}
# puts nums.inspect

# nums = ["1","2","3","4","5"]

# nums.collect! do |e|
#     e+="#"
# end

# puts nums

nums = ["1","2","3","4","5"]

# def run_block(&blok)
#     blok.call
# end

# run_block { puts "called this..." }

# def run_block(&blok)
#     block_given? ? blok.call : (puts "invalid block!")
# end

# run_block { puts "called this..." }
# run_block

# def my_method(arg)
#     arg += 2 if arg.even?
#     arg
# end

# a = [1,2,3,4,5]
# my_method(&a)

# puts a


# def blok
#     puts "started"
#     yield
#     yield
#     puts "end"
# end

# blok {puts "called this..."}

# def yields
#     yield 1
#     yield 2
#     yield 3
# end

# yields { |n| puts n * 10 }

# def i_to_s(arg)
#     arr = []
#     arg.each { |a| arr << yield(a*2).to_s + " #" }
#     arr
# end

# puts i_to_s([1,2,3,4]) {|e| e}

class Person
    attr_accessor :name, :surname

    def initialize(*arg)
       block_given? ? yield(self) : (
           @name = arg[0]
           @surname = arg[1]
       ) 
    end
end

kamil = Person.new do |p|
    p.name = "Kamil"
    p.surname = "Osman"
end

puts kamil.inspect



