class ChangePayRateType < ActiveRecord::Migration[7.0]
  def change
  	change_column :jobs, :pay_rate, :decimal, :precision => 9, :scale => 2
  end
end
