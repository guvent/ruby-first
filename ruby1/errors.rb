#encoding: UTF-8

# def islem(x,y)
#     if !x.is_a?(Fixnum) || !y.is_a?(Fixnum)
#         # raise(TypeError, "Numerik Değer Gelmedi!")
#         fail(TypeError, "Numerik Değer Gelmedi!")
#     else
#         puts x+y
#     end
# end

# # islem(1,"2")

# islem(4,5)

# class Hata < TypeError
#     def message
#         "Tip Hatası!"
#     end
# end

# def topla(x,y)
#     if x.is_a?(Fixnum) && y.is_a?(Fixnum)
#         puts x+y
#     else
#         raise Hata
#     end
# end

# topla(2,"4")

# def topla(x,y)
#     puts x+y
# rescue
#     puts "Hata!!!"
#     puts "Parameter 1 Invalid!" unless x.is_a?(Fixnum)
#     puts "Parameter 2 Invalid!" unless y.is_a?(Fixnum)
# end
# puts "calışmaya devam ediyor...."

# topla(2,"3")


# def bol(x,y)
#     puts x / y
# rescue TypeError
#     puts "Parametreler hatalı!"
# rescue ZeroDivisionError
#     puts "Sıfıra bölemezsin!"
# end
# puts "calışmaya devam ediyor...."


# bol(2,"0")
# bol(2,0)


def topla(x,y)
    a,b = x,y
    begin
        if x.is_a?(Integer) && y.is_a?(Integer)
            puts "toplam: #{x+y}"
        else
            raise TypeError, "Tip Hatası Oluştu!"
        end
    rescue TypeError
        puts "Tip hatası kurtarılıyor..."
        a = x.to_i unless x.is_a?(Integer)
        b = y.to_i unless y.is_a?(Integer)
    ensure
        puts "her koşulda çalışır..."
        puts "toplam2: #{a+b}"
    end
end


topla(3,"6")


