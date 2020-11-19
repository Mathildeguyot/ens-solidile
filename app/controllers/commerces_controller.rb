class CommercesController < ApplicationController
  def index

    @commerces = Commerce.all
    if params[:search]
      @search_term = params[:search]
      @commerces = @commerces.search_by(@search_term)
    end
    if params[:eshop]
      @commerces = @commerces.where("eshop = true")
    end
  end

  def show
    @commerce = Commerce.find(params[:id])
  end

  def destroy
    @commerce.destroy
    redirect_to dashboard_path
  end

  def gastronomie
    @commerces = Commerce.where("tag LIKE '%#{'gastronomie'}%'")
  end

  def sport
    @commerces = Commerce.where("tag LIKE '%#{'sport'}%'")
  end

  def loisirs
    @commerces = Commerce.where("tag LIKE '%#{'loisirs'}%'")
  end

  def mode
    @commerces = Commerce.where("tag LIKE '%#{'mode'}%'")
  end

  def enfance
    @commerces = Commerce.where("tag LIKE '%#{'enfance'}%'")
  end

  def artisanat
    @commerces = Commerce.where("tag LIKE '%#{'artisanat'}%'")
  end

  def decoration
    @commerces = Commerce.where("tag LIKE '%#{'décoration'}%'")
  end

  def beaute
    @commerces = Commerce.where("tag LIKE '%#{'beauté'}%'")
  end

  def locaux
    @commerces = Commerce.where("tag LIKE '%#{'produits locaux'}%'")
  end

  def papeterie
    @commerces = Commerce.where("tag LIKE '%#{'papeterie'}%'")
  end

  def eshop
    @commerces = Commerce.where("eshop = true")
  end

  def params_commerce
    params.require(:commerce).permit(:name, :description, :tag, :tel, :mail, :address, :website, :payment, photos: [])
  end
end
