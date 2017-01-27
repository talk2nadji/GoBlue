class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  # before_action :check_user, only: [:edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
    @photos = @product.photos
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)
      if @product.save
        image_params.each do |image|
          @product.photos.create(image: image)
        end
        redirect_to @product, notice: 'Product was successfully created.'
      else
        render 'new'
      end
  end

  def update
    if @product.update(product_params)
      image_params.each do |image|
        @product.photos.create(image: image)
      end
      redirect_to @product, notice: 'Product was successfully updated.'
    else
      render 'edit'
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path, notice: 'Product was successfully destroyed.'
  end

  private

    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :brand, :description, :price)
    end

    def image_params
      params[:images].present? ? params.require(:images) : []
    end
end
