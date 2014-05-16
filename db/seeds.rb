# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

DEFAULT_INSECURE_PASSWORD = 'mikethefrog1'

User.create({
	first_name: "Mike",
	last_name: "The Frog",
	profile_name: "mikethefrog",
	email: "mike@teamtreehouse.com",
	password: DEFAULT_INSECURE_PASSWORD,
	password_confirmation: DEFAULT_INSECURE_PASSWORD
})

User.create({
	first_name: "Chris",	
	last_name: "Callahan",
	profile_name: "chriscallahan",
	email: "callahan.c@gmail.com",
	password: DEFAULT_INSECURE_PASSWORD,
	password_confirmation: DEFAULT_INSECURE_PASSWORD
})

User.create({
	first_name: "Yankai",	
	last_name: "Shi",
	profile_name: "shiyankai",
	email: "yankai@example.com",
	password: DEFAULT_INSECURE_PASSWORD,
	password_confirmation: DEFAULT_INSECURE_PASSWORD
})

User.create({
	first_name: "Pangpang",	
	last_name: "Shi",
	profile_name: "shipangpang",
	email: "pangpang@example.com",
	password: DEFAULT_INSECURE_PASSWORD,
	password_confirmation: DEFAULT_INSECURE_PASSWORD
})

User.create({
	first_name: "Example",	
	last_name: "User",
	profile_name: "example",
	email: "user@example.com",
	password: DEFAULT_INSECURE_PASSWORD,
	password_confirmation: DEFAULT_INSECURE_PASSWORD
})

chris    = User.find_by_email('callahan.c@gmail.com')
yankai   = User.find_by_email('yankai@example.com')
pangpang = User.find_by_email('pangpang@example.com')
example  = User.find_by_email('user@example.com')
mike     = User.find_by_email('mike@teamtreehouse.com')

seed_user = chris

seed_user.statuses.create(content: "Hello world")
yankai.statuses.create(content: "Ni Hao, shijie!")
pangpang.statuses.create(content: "Wei?")
example.statuses.create(content: "This is an example.")
mike.statuses.create(content: "Mike the Frog, from Treehouse")

UserFriendship.request(seed_user, yankai).accept!
UserFriendship.request(seed_user, pangpang).block!
UserFriendship.request(seed_user, mike)
UserFriendship.request(example, seed_user)