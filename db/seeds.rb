(0...10).each do |index|
  Concert.create(band: "Band #{index}", venue: "#{index} street", city: "city", date: Date.current + index, price:index*20, description:"Minions ipsum bappleees bappleees aaaaaah. Jeje bee do bee do bee do hana dul sae gelatooo butt ti aamoo! Po kass. Tank yuuu! po kass hahaha pepete la bodaaa. Jeje tatata bala tu uuuhhh hana dul sae. Belloo! jeje chasy belloo! Potatoooo uuuhhh. Para tú aaaaaah po kass ti aamoo! Ti aamoo!")
end

(0...20).each do |index|
  Comment.create(concert_id: rand(10), user:"user #{index}", text:"Minions ipsum bappleees bappleees aaaaaah. Jeje bee do bee do bee do hana dul sae gelatooo butt ti aamoo! Po kass. Tank yuuu! po kass hahaha pepete la bodaaa. Jeje tatata bala tu uuuhhh hana dul sae. Belloo! jeje chasy belloo! Potatoooo uuuhhh. Para tú aaaaaah po kass ti aamoo! Ti aamoo!")
end