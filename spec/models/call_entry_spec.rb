require 'rails_helper'

describe CallEntry do
	it {should validate_presence_of :start}
	it {should validate_presence_of :finish}
	it {should validate_presence_of :call_type}
	it {should validate_presence_of :language}
  it {should belong_to :job}

  describe "#call_length" do
    context "given start and end time" do
      it "returns the length of the call in min" do
        call = FactoryGirl.build(:call_entry)
        expect(call.call_length).to(eq(15))
      end
    end
  end

  describe "#earned_this_call" do
    context "given the length and earned per minute rate" do
      it "calculates earned amount for the call" do
        call = build(:call_entry)
        expect(call.earned_this_call(call.call_length)).to(eq(7.50))
      end
    end
  end


end