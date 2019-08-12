class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  
  def inventory
    item = Product.find(params[:id])
    
  end
  
  def desciption 
    
  end
  
  def new
    @product = Product.new
  end
  
  def create
    Product.create(product_params)
    
    redirect_to products_path
  end
  
  private
  
  def product_params
    param.require(:product).permit(:name, :description, :inventory, :price)
  end
  
end
