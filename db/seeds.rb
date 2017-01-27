Photo.destroy_all
Product.destroy_all
Category.destroy_all
User.destroy_all

User.create!(email: "richard@goblue.com", password: "abcd1234", password_confirmation: "abcd1234", first_name: "Richard", last_name: "Codeur" )
User.create!(email: "haico@goblue.com", password: "abcd1234", password_confirmation: "abcd1234", first_name: "Haico", last_name: "Codeur" )
User.create!(email: "jesse@goblue.com", password: "abcd1234", password_confirmation: "abcd1234", first_name: "Jesse", last_name: "Codeur" )
AdminUser.create!(email: "marcia@goblue.com", password: "abcd1234", password_confirmation: "abcd1234", first_name: "Marcia", last_name: "Codeur" )

jams = Category.create!( {name: "Jams"} )
honeys = Category.create!( {name: "Honeys"} )
cheese = Category.create!( {name: "Cheese"} )

photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dys62e25a/image/upload/v1485178123/r6atdeyvqxxgtsnhvbl2.jpg")
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dys62e25a/image/upload/v1485178124/mhd1chm2aplacyqrl3ea.png")
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dys62e25a/image/upload/v1485178122/ujfgty4hzxdhwb8eb8za.jpg")
photo4 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dys62e25a/image/upload/v1485178121/vydkbjdtz3l5szk8tlhl.jpg")
photo5 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dys62e25a/image/upload/v1485178120/rd3zao5wnns5gwlkowww.png")
photo6 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dys62e25a/image/upload/v1485178119/rg06zuulb87vjylwpmph.jpg")
photo7 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dys62e25a/image/upload/v1485178119/rg06zuulb87vjylwpmph.jpg")
photo8 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dys62e25a/image/upload/v1485178117/r3fieykdguszu1i3vby0.jpg")
photo9 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dys62e25a/image/upload/v1485178115/dn0rl7nktzquzaohr7nz.jpg")
photo0 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dys62e25a/image/upload/v1485178118/stsfflrtflfolqsdvgwr.jpg")

product01 = Product.create!( {name: "Jam01", brand: "Brand01", description: "Yummie!, nice jam!", price: 2.45, category: jams, photos: [photo8]} )
product01.save
product02 = Product.create!( {name: "Jam02", brand: "Brand02", description: "This one is even nicer.., nice jam!", price: 3.45, category: jams, photos: [photo7]} )
product02.save
product03 = Product.create!( {name: "Jam03", brand: "Brand03", description: "Great!, nice jam!", price: 4.45, category: jams, photos: [photo6]} )
product03.save
product04 = Product.create!( {name: "Honey01", brand: "Brand01", description: "Yummie!, nice honey!", price: 6.45, category: honeys, photos: [photo5]} )
product04.save
product05 = Product.create!( {name: "Honey02", brand: "Brand02", description: "This one is even nicer.., nice honey!", price: 7.45, category: honeys, photos: [photo4]} )
product05.save
product06 = Product.create!( {name: "Honey03", brand: "Brand03", description: "Great!, nice honey!", price: 9.45, category: honeys, photos: [photo3]} )
product06.save
product07 = Product.create!( {name: "Cheese01", brand: "Brand01", description: "Yummie!, nice cheese!", price: 2.45, category: cheese, photos: [photo1]} )
product07.save
product08 = Product.create!( {name: "Cheese02", brand: "Brand02", description: "This one is even nicer.., nice cheese!", price: 3.45, category: cheese, photos: [photo2]} )
product08.save
product09 = Product.create!( {name: "Cheese03", brand: "Brand03", description: "Great!, nice cheese!", price: 4.45, category: cheese, photos: [photo0]} )
product09.save
product00 = Product.create!( {name: "Jam04", brand: "Brand04", description: "YumYum!, the best jam!", price: 5.45, category: jams, photos: [photo9]} )
product00.save
