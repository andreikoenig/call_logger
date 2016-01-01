class ChangeDateFormatForPayments < ActiveRecord::Migration
  def change
  	change_column :payments, :received, :date
  	change_column :payments, :pay_period_start, :date
  	change_column :payments, :pay_period_end, :date

  end
end
