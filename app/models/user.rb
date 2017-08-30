class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :cart_line_items
 	has_many :wishlists
 	has_many :orders
 	has_many :addresses
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
