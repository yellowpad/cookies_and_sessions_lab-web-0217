class ProductsController < ApplicationController
  def index
  	@cart = cart
  end

  def add
  	if params[:product]
  		session[:cart] << params[:product]
  	end 
   	redirect_to root_path 	
  end
end
