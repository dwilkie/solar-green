# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Branch.where(name: "Solar Green Phnom Penh").first_or_create!(name: "Solar Green Phnom Penh")
User.where(email: "solar_thida@yahoo.com").first_or_create!(name: "Thida", phone: "099 999 999", admin: true, password: "solar_green", branch_id: 1 )

