class Job < ActiveRecord::Base
	has_many :call_entries, dependent: :destroy
	has_many :payments, dependent: :destroy
	belongs_to :user
	validates :name, :pay_rate, :presence => true
end