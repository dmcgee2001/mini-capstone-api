class ImagesController < ApplicationControllerclass
  def show
    @image = Image.find_by(id: params["id"])
    render :show
  end

  def index
    @images = image.all
    render :index
  end

  def create
    @image = Image.create(
      :url => params["url"],
      :product_id => params["product_id"],
    )
    render :show
  end

  def update
    @image = Image.find_by(id: params["id"])
    @image.update(
      :url => params["url"] || @image.url,
      :product_id => params["product_id"] || @image.product_id,
    )
    render :show
  end

  def destroy
    image = Image.find_by(id: params["id"])
    image.delete
    render json: { message: "successfully deleted" }
  end
end
