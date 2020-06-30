# module Benimkiler
#     def self.yazdir
#         puts "Benimki..."
#     end
# end

# module Baskalari
#     def self.yazdir
#         puts "Baskasi...."
#     end
# end


module Benimki
    class Person
        @isim

        def isim(name)
            @isim = name
        end

        def kim
            puts @isim
        end
    end
    
end
