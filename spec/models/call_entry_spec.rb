require 'rails_helper'

describe CallEntry do
	it {should validate_presence_of :start}
	it {should validate_presence_of :finish}
	it {should validate_presence_of :call_type}
	it {should validate_presence_of :language}
    it {should belong_to :job}
end