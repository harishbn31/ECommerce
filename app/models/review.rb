class Review < ActiveRecord::Base
belongs_to :product
belongs_to :user
validates_presence_of :user_id,:product_id,:body, :rating
validates_numericality_of :user_id,:product_id, rating: 1..5

end
