class RemoveUserNameFieldFromUserModel < ActiveRecord::Migration
  def change
  	remove_column :users, :user_name
  end
end
