class WishlistsController < ApplicationController
	before_action :authenticate_user!, except: [:index]

	def index
		@wishlists = Wishlist.all
		@cart_line_item = CartLineItem.new
	end
	
	def create 
		@wishlist = Wishlist.new(params[:wishlist].permit(:user_id, :product_id))
		
		@wishlist.user_id = current_user.id
		
		if @wishlist.save
		redirect_to :back, notice: "Successfully added to the wishlist"
		end
	end
	def destroy
		@wishlist = Wishlist.find(params[:id])
		@wishlist.destroy
		redirect_to :back , notice: "Successfully removed wishlist product"
	end
end


