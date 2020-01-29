Place.destroy_all

Place.create!([{
  name: "Buzzmill",
  description: "Rustic spot serves coffee, beer & cider around the clock in general-store digs with a back patio.",
  address: "1505 Town Creek Dr, Austin, TX 78741",
},
{
  name: "The Jackalope South Shore",
  description: "Laid-back bar featuring booths & pool tables, plus a dog-friendly patio with picnic tables & games.",
  address: "1523 Tinnin Ford Rd, Austin, TX 78741",
},
{
  name: "Frazier's Long and Low",
  description: "Dive bar",
  address: "2538 Elmont Dr, Austin, TX 78741",
}])

p "Created #{Place.count} Place"