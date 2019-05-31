# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Review.destroy_all
Booking.destroy_all
Campervan.destroy_all
User.destroy_all

campervan_photos = ['https://images.unsplash.com/photo-1527786356703-4b100091cd2c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80', 'https://images.unsplash.com/photo-1464851707681-f9d5fdaccea8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1105&q=80', 'https://images.unsplash.com/photo-1519060860149-4d0decee0035?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=890&q=80', 'https://images.unsplash.com/photo-1455275803899-34511e680e27?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80', 'https://images.unsplash.com/photo-1514899307441-bee613d8e6e7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80', 'https://images.unsplash.com/photo-1516394399858-ae258cf724cc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80', 'https://images.unsplash.com/photo-1496350196909-03a287256293?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80', 'https://images.unsplash.com/photo-1461435218581-ff0972867e90?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1053&q=80', 'https://images.unsplash.com/photo-1456769934615-a8c18ec1c83b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80', 'https://images.unsplash.com/photo-1502113040754-9e3e85618a00?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80', 'https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1008&q=80', 'https://images.unsplash.com/photo-1503650923300-dd2f6a007eaf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80', 'https://images.unsplash.com/photo-1518110767214-c10a1c3a773e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80', 'https://images.unsplash.com/photo-1521973289773-1d99478a9973?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1189&q=80', 'https://images.unsplash.com/photo-1493398961404-f06dd2f81108?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1355&q=80', 'https://images.unsplash.com/photo-1533745894801-062ca8abd594?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1226&q=80', 'https://images.unsplash.com/photo-1498534452068-01329064a4a3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1496350196909-03a287256293?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1557854457-8476b8551eed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1146&q=80', 'https://images.unsplash.com/photo-1524090485940-4ded7244c483?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1243&q=80', 'https://images.unsplash.com/photo-1542940885-cf9f1c68c3d0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1255&q=80', 'https://images.unsplash.com/photo-1484529326784-746408a69a28?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1537101472234-ca136a6c03ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=681&q=80', 'https://images.unsplash.com/photo-1536294295328-fddf6da9d47e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=635&q=80']
bed_type = ["Twin", "Double", "Queen", "Bunks"]
belted_seats = (1..4).to_a
sleeps = (2..4).to_a
prince_range = (10..100).to_a
rating = (3..5).to_a

15.times do
  user = User.new(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    phone_number: Faker::PhoneNumber.cell_phone)

  user.save

end

i = 0
22.times do
  campervan = Campervan.new(
    name: Faker::Hipster.word,
    belted_seats: belted_seats.sample,
    bed_type: bed_type.sample,
    sleeps: sleeps.sample,
    location: Faker::Address.street_address,
    user: User.all.sample,
    daily_price: prince_range.sample)
  campervan.remote_photo_url = campervan_photos[i]
  campervan.save
  i += 1


2.times do
  booking = Booking.new(
    total_price: prince_range.sample,
    start_date: Faker::Date.between(2.days.ago, Date.today),
    end_date: Faker::Date.forward(13),
    campervan: campervan,
    user: User.all.sample
    )

  booking.save

  1.times do
    review = Review.new(
      rating:rating.sample,
      description: Faker::Lorem.sentence,
      booking: booking)

    review.save
  end
end










end





