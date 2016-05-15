# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'ffaker'
organization = Organization.create(name: 'vtracker ladies')

p "Created #{Organization.count} organization"

account = Account.create(organization_id: 1,
                         email: 'vtracker@vtracker.com',
                         password: 'Password1')

5.times do
  Account.create(organization_id: 1,
                 email: FFaker::Internet.email,
                 password: 'Password1')
end

p "Created #{Account.count} accounts"

roles = ["", "", "", "", "donor", "volunteer", "intern"]
15.times do
  Member.create({
    organization_id: 1,
    first_name: FFaker::Name.first_name,
    last_name: FFaker::Name.last_name,
    email: FFaker::Internet.email,
    phone: FFaker::PhoneNumber.short_phone_number,
    age: rand(18..90),
    hours_worked: rand(10..400),
    last_contacted_at: (1..500).to_a.sample.days.ago,
    roles: roles[rand(0..6)..rand(0..6)],
    address_attributes: {
      street1: FFaker::AddressUS.street_address,
      street2: FFaker::AddressUS.secondary_address,
      state: FFaker::AddressUS.state,
      country: FFaker::AddressUS.country,
      zipcode: FFaker::AddressUS.zip_code,
      city: FFaker::AddressUS.city
    } 
  })
end

p "Created #{Member.count} members"

30.times do
  Donation.create(
    amount: rand(1..500),
    member_id: rand((Member.first.id)..(Member.last.id))
  )
end

p "Created #{Donation.count} donations"

subjects = ["Welcome to the Community!", "Thank You For Contributing", "Would You Like to Donate?", "Happy Anniversary!", "It's Been a While, We Miss You"]
subject_types = %w(welcome thank_you donation anniversary reminder)

30.times do
  rand_email = rand(0..4)
  Email.create(
    member_id: rand((Member.first.id)..(Member.last.id)),
    subject: subjects[rand_email],
    account_id: rand((Account.first.id)..(Account.last.id)),
    subject_type: subject_types[rand_email]
  )
end
p "Created #{Email.count} emails"

