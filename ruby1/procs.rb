
my_proc = proc { puts "my proc called" }

my_proc.call

my_proc2 = proc do
    puts "my proc 2 called"
end
my_proc2.call

my_proc3 = Proc.new do |name|
    puts "Hello #{name}"
end
my_proc3.call

puts [3,5,6,4,3,5,7,6,4,3,6].inject(&:+)

puts (1..15).inject(1,:*)


arr = ["W", "G", "H", "M"]
arr.collect!(&:downcase)

puts arr.inspect


