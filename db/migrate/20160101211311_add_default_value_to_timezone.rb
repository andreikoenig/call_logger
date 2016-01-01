class AddDefaultValueToTimezone < ActiveRecord::Migration
  def change
  	change_column :users, :time_zone, :string, default: "Eastern Time (US & Canada)"
  end
end
