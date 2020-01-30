User.destroy_all
Place.destroy_all
#Comment.destroy_all

user = User.new
user.email = 'test@test.com'
user.password = '123456'
user.password_confirmation = '123456'
user.save!

p "Created #{user}"

Place.create!([{
  name: "Buzzmill",
  description: "Rustic spot serves coffee, beer & cider around the clock in general-store digs with a back patio.",
  address: "1505 Town Creek Dr, Austin, TX 78741",
  user_id: user.id,
},
{
  name: "The Jackalope South Shore",
  description: "Laid-back bar featuring booths & pool tables, plus a dog-friendly patio with picnic tables & games.",
  address: "1523 Tinnin Ford Rd, Austin, TX 78741",
  user_id: user.id,
},
{
  name: "Frazier's Long and Low",
  description: "Dive bar",
  address: "2538 Elmont Dr, Austin, TX 78741",
  user_id: user.id,
}])

p "Created #{Place.count} places"

# Comment.create!([{
#     message: "jkfdhkfjhsd",
#     rating: 4,
#     user_id: user.id,
#     place_id: Place[0].id
# }])

# p "Created #{Comment.count} comments"