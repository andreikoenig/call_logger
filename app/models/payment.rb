class Payment < ActiveRecord::Base
	validates :received, :amount, :presence => true
	belongs_to :job

	def pay_period
		pay_period_start.to_s + " through " + pay_period_end.to_s
	end
end