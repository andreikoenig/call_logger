class CreateCallEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :call_entries do |t|
    	t.datetime :start
    	t.datetime :finish
    	t.string :call_type
    	t.string :language
    	t.text :comment
    	t.integer :job_id

    	t.timestamps
    end
  end
end
