class CreateBankCustomers < ActiveRecord::Migration
  def change
    create_table :bank_customers do |t|
    	t.string :acc_no
    	t.string :name
    	t.float :balance
      t.timestamps null: false
    end
  end
end
