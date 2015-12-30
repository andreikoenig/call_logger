require 'rails_helper'

describe User do
	it {should validate_presence_of :first_name}
	it {should validate_presence_of :last_name}
	it {should validate_presence_of :user_name}
end

# RSpec.describe User, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end
