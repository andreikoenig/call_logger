FactoryGirl.define do
  factory :payment do
    received "2016-01-25"
    amount 100.50
    pay_period_start "2016-01-01"
    pay_period_end "2016-01-20"
    association :job, factory: :job, strategy: :build
  end
end