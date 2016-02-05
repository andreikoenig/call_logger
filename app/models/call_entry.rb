class CallEntry < ActiveRecord::Base
	belongs_to :job
	validates :start, :finish, :call_type, :language, :presence => true

def call_length
	((finish - start)/60).round(2)
end

def earned_this_call(min)
  (min * job.pay_rate).round(2)
end
end