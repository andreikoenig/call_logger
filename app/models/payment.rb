class Payment < ActiveRecord::Base
	validates :received, :amount, :presence => true
	belongs_to :job

	def pay_period
		pay_period_start.strftime("%m-%d-%Y").to_s + " through " + pay_period_end.strftime("%m-%d-%Y").to_s
	end
end