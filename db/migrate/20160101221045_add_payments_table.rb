class AddPaymentsTable < ActiveRecord::Migration
  def change
  	create_table :payments do |t|
  		t.datetime :received
  		t.decimal :amount
  		t.datetime :pay_period_start
  		t.datetime :pay_period_end

  		t.timestamps
  	end
  end
end
