puts Time.now

tarih1 = Time.local(2005, 10, 20)

tarih2 = Time.now

fark = tarih2 - tarih1

puts fark

gun = (fark/86400).round
yil = (gun/365).round

puts gun, yil

puts tarih1.tuesday?


require 'date'

t = Date.new(2019, 5, 11)
puts t

puts Date.today
puts Date.today.next
puts Date.today + 4

puts "-"*30

tt = Date.today
tt.downto(tt-10) do |gunler|
    puts gunler
end


