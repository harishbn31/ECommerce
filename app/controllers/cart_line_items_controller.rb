class CartLineItemsController < ApplicationController
before_action :authenticate_user!
	def index
		@cart_line_items = current_user.cart_line_items
		@order = Order.new
		@wishlists = Wishlist.all
		@address = Address.new

	end
	def new
		@cart_line_item = CartLineItem.new
	end
	def create
		@cart_line_item = CartLineItem.new(params[:cart_line_item].permit(:quantity,:product_id)) # new instance of an object cart_line-item is in
		@cart_line_item.user_id = current_user.id
		
		@wishlist =Wishlist.find_by(product_id: @cart_line_item.product_id, user_id: @cart_line_item.user_id)
		if @cart_line_item.save_or_update
			if @wishlist != nil
				@wishlist.destroy
			end
			redirect_to  cart_line_items_path, notice: "Successfully added to product to the cart"
		end


	end
	
	def update
		@cart_line_item = CartLineItem.find(params[:id])
		if @cart_line_item.update_attributes(params[:cart_line_item].permit (:quantity))
			redirect_to cart_line_items_path, notice: " successfully updated the quantity"
		end

	end
		def destroy
		@cart_line_item = CartLineItem.find(params[:id])
		@cart_line_item.destroy
		redirect_to cart_line_items_path, notice: "Cart line item has removed"
	end
end

