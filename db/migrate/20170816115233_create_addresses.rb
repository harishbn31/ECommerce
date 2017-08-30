class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
    	t.integer :user_id
    	t.string :street
    	t.integer :pin
    	t.string :city
    	t.string :landmark

      t.timestamps null: false
    end
  end
end
