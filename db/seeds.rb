# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do |index|
	cities = City.create!(name: Faker::Address.city)
	doctors = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality_id: index + 1, postal_code: Faker::Number.number(5), city_id: index + 1)
  patients = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: index + 1)
  appointments = Appointment.create!(date: Faker::Time.forward, doctor_id: index + 1, patient_id: index + 1, city_id: index + 1)
	specialities = Speciality.create!(name: Faker::Job.field, doctor_id: index + 1)
end
