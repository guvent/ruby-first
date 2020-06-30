


=begin

class Person
    # private static var
    @@kisi = 0

    def yeni(isim)
        # func build in var
        @isim = isim
        @@kisi += 1
    end

    def toplam
        return @@kisi
    end

end


# puts @@kisi

person1 = Person.new

puts person1.toplam

person1.yeni "ahmet"

puts person1.toplam


#inheritance 


class Empoylee < Person
    def get_name
        puts @isim
    end
    
end

empoylee1 = Empoylee.new
empoylee1.yeni "Kamil"
empoylee1.get_name

puts empoylee1.toplam

=end

def kimsin
    puts "Benim"

    #return true
    true # returned this..
end

puts kimsin

