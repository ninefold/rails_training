class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new product_params
    if @product.save
      redirect_to products_path, :notice => "Saved a product"
    else
      render :new
    end
  end

  def edit
    @product = find_product
  end

  def update
    @product = find_product
    if @product.update product_params
      redirect_to products_path, :notice => "Updated a product"
    else
      render :edit
    end
  end

  def destroy
    find_product.destroy
    redirect_to products_path, :notice => "Deleted a product"
  end

  private

  def product_params
    params.require(:product).permit(:name, :description)
  end

  def find_product
    Product.find params[:id]
  end
end
