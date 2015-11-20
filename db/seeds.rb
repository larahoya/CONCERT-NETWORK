(0...10).each do |index|
  Concert.create(band: "Band #{index}", venue: "#{index} street", city: "city", date: Date.current + index, price:index*20, description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque cursus mollis metus eget pulvinar. Nullam laoreet convallis augue, id ornare sapien. Mauris sapien eros, semper ut mollis posuere, maximus sed leo. Etiam vel nulla sodales, suscipit nisl sit amet, dictum leo. Donec convallis feugiat suscipit. Donec vel odio non ex eleifend laoreet convallis sit amet magna. Duis urna tellus, feugiat vitae pulvinar non, pulvinar id leo")
end

(0...20).each do |index|
  Comment.create(concert_id: rand(10), user:"user #{index}", text:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque cursus mollis metus eget pulvinar. Nullam laoreet convallis augue, id ornare sapien. Mauris sapien eros, semper ut mollis posuere, maximus sed leo. Etiam vel nulla sodales, suscipit nisl sit amet, dictum leo. Donec convallis feugiat suscipit. Donec vel odio non ex eleifend laoreet convallis sit amet magna. Duis urna tellus, feugiat vitae pulvinar non, pulvinar id leo")
end