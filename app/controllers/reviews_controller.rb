class ReviewsController < ApplicationController
before_action :authenticate_user!
# before_action :check_is_admin, except: [:index,:show]


def index
		@reviews = Review.all
	end

	def new
		@review = Review.new
	end

	def create 
		@review = Review.new(params[:review].permit(:user_id, :product_id, :body, :rating))
		@review.user_id = current_user.id
		if @review.save

		Notification.review_confirmation(@review).deliver!
			redirect_to :back, notice: "Successfully created the Review"
	
		end
	end

	def show
		@review = Review.find(params[:review])
		@cart_line_item = CartLineItem.new
	end

	def edit
		@review = Review.find(params[:id])
	end
	def update
		@review = Review.find(params[:id])
		if @review.update_attributes(params[:review].permit(:user_id, :product_id, :body, :rating))
			redirect_to product_path(@review.product_id), notice: "Successfully updated the Review"
		else
			render action: "edit"
		end
	end

	def destroy
		@review = Review.find(params[:id])
		@review.destroy
		redirect_to :back, notice: "Successfully destroyed the Review"
	end
end
