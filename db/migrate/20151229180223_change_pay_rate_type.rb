class ChangePayRateType < ActiveRecord::Migration
  def change
  	change_column :jobs, :pay_rate, :decimal, {:precision => 9, :scale => 2}
  end
end
