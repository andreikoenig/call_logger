FactoryGirl.define do
  factory :call_entry do
    start "2016-01-15 13:10:00"
    finish "2016-01-15 13:25:00"
    call_type "medical"
    language "russian"
    association :job, factory: :job, strategy: :build
  end
end