# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
Post.destroy_all
User.destroy_all

User.create!({
  name: 'Lester Tester',
  email: 'test@user.com',
  password: 'test1234',
  password_confirmation: 'test1234'
})

100.times do
  PublicPost.create!(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraphs
  )

  PrivatePost.create!(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraphs
  )
end
