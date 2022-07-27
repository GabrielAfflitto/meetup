# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Group.destroy_all
UserGroup.destroy_all

User.create!([
  {first_name: "Aaron", last_name: "Rogers"},
  {first_name: "Tom", last_name: "Brady"},
  {first_name: "Russell", last_name: "Wilson"},
  {first_name: "Trey", last_name: "Lance"}
  ])

Group.create!([
  {name: "Passing"},
  {name: "Rushing"},
  {name: "Skating"},
  {name: "Golf"}
  ])

UserGroup.create!([
  {user_id: 1, group_id: 1, role: ["Organizer"]},
  {user_id: 2, group_id: 1, role: ["Presenter"]},
  {user_id: 3, group_id: 1, role: ["Participant"]},
  {user_id: 4, group_id: 1, role: ["Participant"]},
  {user_id: 1, group_id: 2, role: ["Presenter"]},
  {user_id: 2, group_id: 2, role: ["Organizer"]},
  {user_id: 3, group_id: 2, role: ["Participant"]},
  {user_id: 4, group_id: 3, role: ["Organizer"]},
  {user_id: 4, group_id: 4, role: ["Presenter"]}
  ])
