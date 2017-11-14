# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
columns= %w(first_name last_name email_address address_line_one address_line_two address_city address_state address_zip)
# count = 1_000_000
count = 5_000
slice= 1_000

count.times.each_slice(slice) do |group|
  users = []
  group.each do |iteration|
    users << [].tap do |user|
      user << Faker::Name.first_name
      user << Faker::Name.last_name
      user << Faker::Internet.email
      user << Faker::Address.street_address
      user << Faker::Address.secondary_address
      user << Faker::Address.city
      user << Faker::Address.state_abbr
      user << Faker::Address.zip_code
    end
  end
  User.import columns, users
  puts "Import #{group.first + slice} users"
end
