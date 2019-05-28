# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
bed_type = ["Twin", "Double", "Queen" "King"]
belted_seats = (1..7).to_a
prince_range = (100..1000).to_a
rating = (1..5).to_a

15.times do
  user = User.new(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    phone_number: Faker::PhoneNumber.cell_phone)

  user.save

end

20.times do
  campervan = Campervan.new(
    name: Faker::FunnyName.name,
    belted_seats: belted_seats.sample,
    bed_type: bed_type.sample,
    sleeps: belted_seats.sample,
    location: Faker::Address.street_address,
    user: User.all.sample,
    photo: Faker::Creature::Dog.name,
    daily_price: prince_range.sample)
    # byebug
  campervan.save

end

20.times do
  booking =Booking.new(
    total_price: prince_range.sample,
    start_date: Faker::Date.between(2.days.ago, Date.today),
    end_date: Faker::Date.forward(23),
    campervan: Campervan.all.sample,
    user: User.all.sample
    )

  booking.save

end

20.times do
  review = Review.new(
    rating:rating.sample,
    description: Faker::Lorem.sentence,
    booking: Booking.all.sample)

  review.save
end


