# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [
		["Roma", "Parakeet", "roma@budgies.com", "password"],
		["Zoe", "Potcake", "zoe@zoe.com", "password"]
]

jobs = [
		["Stark Industries", "0.32", "Working for Iron Man!", "1"],
		["Wings LLC", "0.45", "Pays on the first of the month", "1"],
		["Abaco Hospital", "0.34", "Bahama based company", "2"],
		["OC Animal Hospital", "0.67", "Pays a lot!", "2"]
]

call_entries = [
		["2016-01-18 19:08:00", "2016-01-18 19:50:00", "medical", "russian", "call got disconnected", "1"],
		["2016-01-16 15:10:00", "2016-01-16 15:54:00", "medical", "ukranian", "", nil, "1"],
		["2016-01-18 10:25:00", "2016-01-18 11:47:00", "legal", "ukranian", "client was hard to understand", "1"],
		["2016-01-07 16:22:00", "2016-01-07 17:50:00", "medical", "russian", nil, "2"],
		["2016-01-18 18:15:00", "2016-01-18 18:22:00", "customer service", "russian", "short call...", "2"],
		["2016-01-03 11:33:00", "2016-01-03 14:02:00", "medical", "russian", "very long call", "2"],
		["2016-01-18 19:12:00", "2016-01-18 19:59:00", "other", "ukranian", nil, "2"],
		["2016-01-15 15:02:00", "2016-01-15 16:50:00", "medical", "russian", "very unhappy client, bad connection", "3"],
		["2015-12-18 19:12:00", "2015-12-18 19:50:00", "legal", "russian", nil, "3"],
		["2016-01-18 19:08:00", "2016-01-18 19:50:00", "medical", "russian", "call got disconnected", "3"],
		["2016-01-10 17:08:00", "2016-01-10 18:57:00", "other", "ukranian", nil, "4"],
		["2016-01-17 10:11:00", "2016-01-17 14:50:00", "medical", "russian", "very long call", "4"],
		["2015-11-19 19:011:00", "2015-11-19 20:17:00", "legal", "russian", nil, "4"]
]

payments = [
		["2016-01-20", "55.23", "2016-01-03", "2016-01-18", "1"],
		["2016-01-19", "68.23", "2016-01-01", "2016-01-15", "1"],
		["2015-12-18", "55.23", "2015-12-01", "2015-12-15", "2"],
		["2015-11-30", "110.12", "2015-11-09", "2015-11-22", "2"],
		["2015-12-15", "48.00", "2015-11-30", "2015-12-10", "3"],
		["2015-11-30", "74.50", "2015-11-09", "2015-11-22", "3"],
		["2016-01-20", "70.98", "2016-01-03", "2016-01-18", "4"],
		["2015-10-30", "156.88", "2015-10-01", "2015-10-18", "4"]
]

users.each do |fname, lname, email, password|
	user = User.new(
			    	first_name: fname,
			       	last_name: lname,
			       	email: email,
			       	password: password,
			       	password_confirmation: password

		)
	user.save!
end

jobs.each do |name, pay_rate, description, user_id|
	job = Job.new(
				name: name,
				pay_rate: pay_rate,
				description: description,
				user_id: user_id
		)
	job.save!
end

call_entries.each do |start, finish, call_type, language, comment, job_id|
	call_entry = CallEntry.new(
				start: start,
				finish: finish,
				call_type: call_type,
				language: language,
				comment: comment,
				job_id: job_id
		)
	call_entry.save!
end

payments.each do |received, amount, pay_period_start, pay_period_end, job_id|
	payment = Payment.new(
				received: received,
				amount: amount,
				pay_period_start: pay_period_start,
				pay_period_end: pay_period_end,
				job_id: job_id
		)
	payment.save!
end