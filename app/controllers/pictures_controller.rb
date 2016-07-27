class PicturesController < ApplicationController

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.create(picture_params)
  end

  def destroy
    @picture.destroy
    redirect_to root_url 
  end

  private
    def picture_params
      params.require(:picture).permit(:pictureable)
    end
end
