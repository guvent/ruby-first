
liste1 = { "title"=> "Deneme", "author"=> "me", "content"=> "deneme 123"}
liste2 = { :title=> "Deneme", :author=> "me", :content=> "deneme 123"}

liste3 = { "title": "Deneme", "author": "me", "content": "deneme 123"}
liste4 = { title: "Deneme", author: "me", content: "deneme 123"}


# puts liste1, liste2, liste3, liste4

# puts "*"*30

# puts liste1.keys

# puts "*"*30

# puts liste1.values

# puts "*"*30

# liste = Hash.new
# puts liste.inspect

# puts liste1.fetch("title", 'Yok')
# puts liste2.fetch(:title, 'Yok')

# puts liste1.fetch("title2", 'Yok')
# puts liste2.fetch(:title2, 'Yok')

# liste1.store("deneme", 15)
# puts liste1

require 'json'

puts JSON.dump(liste1)






