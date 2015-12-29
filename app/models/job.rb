class Job < ActiveRecord::Base
	validates :name, :pay_rate, :presence => true
end