class Product < ActiveRecord::Base
	belongs_to :category
	has_many :reviews
	has_many :cart_line_items
	has_many :wishlists
	validates_presence_of :name, :price, :category_id, :description
	validates_numericality_of :price, :category_id, greater_than_or_equal_to: 1
end
