class HomeController < ApplicationController
	  
  def index
  	@categories = Category.all 			
  	# <!--order('name AESC')-->
  	@products = Product.all
  end
  
  # def contact
  # end

end
