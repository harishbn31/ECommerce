class AddressesController < ApplicationController
before_action :authenticate_user!
	def index
		@addresses = Address.all
		@address = Address.find(params[:id])
	end

	def new
		@address = Address.new
		
	end

	def create
		@address = Address.new(params[:address].permit(:street,:pin,:landmark,:city))
		@address.user_id = current_user.id
		@address.save
		redirect_to cart_line_items_path, notice: "created new address"
	end
end
