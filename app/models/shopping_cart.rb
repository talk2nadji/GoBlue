class ShoppingCart
  attr_reader :cart

  def initialize(cart = [])
    #create empty card
    @cart = cart
  end

  def add_product(product_id, amount = 1)
    #create variable hash to put in product_id and amount
    product_item = {}
    product_item[:product_id] = product_id
    product_item[:amount] = amount
    #return cart with added product and amount 1, adding more would be possible later
    @cart << product_item
  end

  def remove_product(product_id)
    #remove product_id from the ShoppingCart
    shoppingcart = [{ product_id: 5, amount: 1}, {product_id: 6, amount: 3 }]

  end

end
