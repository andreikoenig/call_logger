require 'rails_helper'

describe Job do
	it {should validate_presence_of :name}
	it {should validate_presence_of :pay_rate}
end