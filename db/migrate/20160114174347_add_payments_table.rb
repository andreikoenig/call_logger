class AddPaymentsTable < ActiveRecord::Migration
  def change
  	create_table :payments do |t|
  		t.date :received
  		t.decimal :amount
  		t.date :pay_period_start
  		t.date :pay_period_end
  		t.integer :job_id

  		t.timestamps
  	end
  end
end
