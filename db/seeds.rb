Product.destroy_all

product01 = Product.create!( {name: "Jam01", description: "Yummie!, nice jam!", price: 2.45} )
product01.save
product02 = Product.create!( {name: "Jam02", description: "This one is even nicer.., nice jam!", price: 3.45} )
product02.save
product03 = Product.create!( {name: "Jam03", description: "Great!, nice jam!", price: 4.45} )
product03.save
