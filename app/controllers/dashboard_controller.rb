class DashboardController < ApplicationController
before_action :check_is_admin

def check_is_admin
  if current_user.is_admin 
    return true
  else
    redirect_to root_path, notice: "The page you are looking does't exists"
  end
end
  def home

  end

  def categories
    @categories = Category.all
  end

  def products
    @products =Product.all
  end

  def users
    @users = User.all
    @orders = Order.all
  end

  def reviews
  end

  def orders
    @orders = Order.all
  end
end
