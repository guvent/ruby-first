
class Person
    @isim

    def self.isimver(name)
        @isim = name
    end

    def self.isimne?
        puts @isim
    end
    
end


Person.isimver "Ahmet"
Person.isimne?

