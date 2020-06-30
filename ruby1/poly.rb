
class Person
    def yeni
        puts "yeni kisi"
    end
end

class Worker < Person
    def yeni
        super
        puts "yeni işci"
    end
end

worker = Worker.new
worker.yeni

