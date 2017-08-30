class OrdersController < ApplicationController
before_action :authenticate_user!

def index
#Orders.where('user_id = ?',current_user.id)
	@orders = current_user.orders
	# @addresses =Address.all
	# @address =Address.find(params[:id])

end

def create
@order = Order.new(order_date: Date.today, order_number: "DCT#{Random.rand(1000)}")
@order.update_attributes(params[:order].permit (:address_id))
# @order = Order.new(params[:order].permit(:address_id))
@order.order_date = Date.today
@order.user_id = current_user.id
@order.save
# Notification.order_confirmation(@order).deliver!
# binding.pry
redirect_to orders_path, notice: "Your Order has been placed"
end

end
