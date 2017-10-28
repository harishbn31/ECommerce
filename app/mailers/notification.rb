class Notification < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification.order_confirmation.subject

def review_confirmation (review)
	@user =User.find_by(is_admin: true)
	# binding.pry
  	@review = review
    # mail to: "#{@review.user.email}", subject: "Thanks for Review add - #{@review.user.username}"
    mail to: "#{@user.email}", subject: "Review added by #{@review.user.username} to the product #{@review.product.name}"
      end

    def order_confirmation (order)
  @order= order
    # binding.pry
    mail to: "#{@order.user.email}", subject: "Order confirmed - #{@order.order_number}"
  end
  
  
end
