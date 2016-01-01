require 'rails_helper'

describe Payment do
	it {should validate_presence_of :received}
	it {should validate_presence_of :amount}
	it {should belong_to :job}
end