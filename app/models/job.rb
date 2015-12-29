class Job < ActiveRecord::Base
	has_many :call_entries
	validates :name, :pay_rate, :presence => true
end