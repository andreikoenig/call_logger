require 'rails_helper'

describe Job do
	it {should validate_presence_of :name}
	it {should validate_presence_of :pay_rate}
	it {should have_many :call_entries}
end