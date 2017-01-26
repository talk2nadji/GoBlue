Product.destroy_all
Category.destroy_all
User.destroy_all

User.create!(email: "richard@goblue.com", password: "abcd1234", password_confirmation: "abcd1234" )

jams = Category.create!( {name: "Jams"} )
honeys = Category.create!( {name: "Honeys"} )
cheese = Category.create!( {name: "Cheese"} )

product01 = Product.create!( {name: "Jam01", description: "Yummie!, nice jam!", price: 2.45, category: jams} )
product01.save
product02 = Product.create!( {name: "Jam02", description: "This one is even nicer.., nice jam!", price: 3.45, category: jams} )
product02.save
product03 = Product.create!( {name: "Jam03", description: "Great!, nice jam!", price: 4.45, category: jams} )
product03.save
product04 = Product.create!( {name: "Honey01", description: "Yummie!, nice honey!", price: 6.45, category: honeys} )
product04.save
product05 = Product.create!( {name: "Honey02", description: "This one is even nicer.., nice honey!", price: 7.45, category: honeys} )
product05.save
product06 = Product.create!( {name: "Honey03", description: "Great!, nice honey!", price: 9.45, category: honeys} )
product06.save
product07 = Product.create!( {name: "Cheese01", description: "Yummie!, nice cheese!", price: 2.45, category: cheese} )
product07.save
product08 = Product.create!( {name: "Cheese02", description: "This one is even nicer.., nice cheese!", price: 3.45, category: cheese} )
product08.save
product09 = Product.create!( {name: "Cheese03", description: "Great!, nice cheese!", price: 4.45, category: cheese} )
product09.save
