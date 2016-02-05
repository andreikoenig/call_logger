 namespace :db do
  desc "calculate and set length and earned value for existing calls"
  task :length_and_earned => :environment do
    all_calls = CallEntry.all
    all_calls.each do |c|
      min = c.call_length
      money_earned = c.earned_this_call(min)
      c.length = min
      c.earned = money_earned
      c.save
    end
  end
end