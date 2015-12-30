class CallEntry < ActiveRecord::Base
	belongs_to :job
	validates :start, :finish, :call_type, :language, :presence => true

def call_length
	(finish - start)/60
end

def earned(min)
  min * job.pay_rate
end
end