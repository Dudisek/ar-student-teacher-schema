require_relative '../app/models/teacher'
require 'faker'
# Faker::Name.name   
# Faker::Internet.email
# Faker::Company.duns_number


10.times do 
Teacher.create(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  phone: Faker::Company.duns_number
  )
end


p "Created #{Teacher.count} movies"

