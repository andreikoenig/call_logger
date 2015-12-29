class CallEntry < ActiveRecord::Base
	belongs_to :job
	validates :start, :finish, :call_type, :language, :presence => true
end