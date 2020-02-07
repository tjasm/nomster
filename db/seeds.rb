require 'faker'

User.destroy_all
Place.destroy_all
Comment.destroy_all
Photo.destroy_all

user = User.new
user.email = 'test@test.com'
user.password = '123456'
user.password_confirmation = '123456'
user.save!

p "Created #{user}"

5.times do
  place = Place.create!([{
    name: Faker::Restaurant.name,
    description: Faker::Restaurant.description,
    address: Faker::Address.full_address,
    user_id: user.id
  }])

  3.times do
    Comment.create!([{
        message: Faker::Restaurant.review,
        rating: Faker::Number.between(from: 1, to: 5),
        user_id: user.id,
        place_id: place[0].id
    }]) 
  end

  2.times do
    Photo.create!([{
        caption: "Yum",
        remote_picture_url: "https://via.placeholder.com/350x150",
        user_id: user.id,
        place_id: place[0].id
    }]) 
  end
end