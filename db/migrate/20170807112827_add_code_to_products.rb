class AddCodeToProducts < ActiveRecord::Migration
  def change
  	add_column :products,:code,:string
  	add_column :products,:stock,:integer

  	add_column :categories,:code,:string
  end
end
