class CommercesController < ApplicationController
  def index
    @commerces = Commerce.all
  end

  def show
    @commerce = Commerce.find(params[:id])
  end

  def destroy
    @commerce.destroy
    redirect_to dashboard_path
  end

  def params_commerce
    params.require(:commerce).permit(:name, :description, :tag, :tel, :mail, :address, :website, :payment, photos: [])
  end
end
