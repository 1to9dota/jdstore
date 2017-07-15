class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def add_to_cart
     @product = Product.find(params[:id])
     redirect_to :back
     flash[:notice] = "测试加入购物车"
   end
  def show
    @product = Product.find(params[:id])
  end
  
  def add_to_cart
    @product = Product.find(params[:id])
    current_cart.add_product_to_cart(@product)
    redirect_to :back
  end
end
