class ProductsController < ApplicationController
  def index
    @products = filtered_products
    respond_to do |format|
      format.html { @products = @products.paginate(page: params[:page], per_page: 25)}
      format.xlsx
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
  end

  def create
  end

  private
    def filter_params
      params.slice(:brand, :model, :ram, :external_storage)
    end

    def filtered_products
      @products = Product.filter(filter_params)
    end
end
