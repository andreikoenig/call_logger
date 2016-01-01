class AddJobIdKeyToPayments < ActiveRecord::Migration
  def change
  	add_column :payments, :job_id, :integer
  end
end
