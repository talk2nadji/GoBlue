require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "Creation" do
    before do
      @product = Product.create(name: "Juice", description: "Whatever", price: 0.99)
    end
    it "can be created" do
      expect(@product).to be_valid
    end

    it "cannot be created without a name, description, price" do
      @product.name = nil
      @product.description = nil
      @product.price = nil
      expect(@product).to_not be_valid
    end
  end
end
