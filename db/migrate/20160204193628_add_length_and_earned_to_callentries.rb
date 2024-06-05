class AddLengthAndEarnedToCallentries < ActiveRecord::Migration[7.0]
  def change
    add_column :call_entries, :length, :decimal, :precision => 9, :scale => 2
    add_column :call_entries, :earned, :decimal, :precision => 9, :scale => 2
  end
end
