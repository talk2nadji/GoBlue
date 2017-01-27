class PhotosController < ApplicationController
  def destroy
    photo = Photo.find(params[:id])
    @product = photo.product
    if current_user.type == 'AdminUser'
      photo.destroy

      redirect_to edit_product_path(@product), notice: "Photo successfully removed"
    else
      redirect_to @product, notice: "Cannot delete that photo"
    end
  end
end
