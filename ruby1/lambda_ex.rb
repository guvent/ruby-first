
lam = lambda { puts "called me!"} 
lam2 = ->() { puts "Hello" }

lam3 = ->(a,b) {a*b}

puts lam3.call 4,5


def fonk # eksik parametreler nil sayılır
    p = Proc.new do
        return "returned in proc"
    end
    p.call
    return "returned outher"
end

def fonk2  # eksik parametrelere hata verir
    l = ->() { return "returned in proc" }
    l.call
    return "returned outher"
end

puts fonk, fonk2


