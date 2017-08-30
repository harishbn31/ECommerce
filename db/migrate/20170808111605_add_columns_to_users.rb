class AddColumnsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :username, :string
  	add_column :users, :mobile, :string
  	add_column :users, :gender, :string
  	add_column :users, :dob, :date
  	add_column :users, :is_admin, :boolean, default: false
  end
end
