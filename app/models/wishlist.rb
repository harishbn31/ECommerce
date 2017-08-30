class Wishlist < ActiveRecord::Base
	belongs_to :user
	belongs_to :product
	belongs_to :cart_line_item
	validates_presence_of :user_id, :product_id
	validates_numericality_of :user_id, :product_id
end
