# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

organization = Organization.create(name: 'vtracker ladies')

p "Created #{Organization.count} organization"

account = Account.create(organization_id: 1,
                         email: 'vtracker_test@email.com',
                         password: 'Password1')

p "Created #{Account.count} account"
