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

users = User.create([
  {first_name: "Aaron", last_name: "Rogers"},
  {first_name: "Tom", last_name: "Brady"},
  {first_name: "Russell", last_name: "Wilson"},
  {first_name: "Trey", last_name: "Lance"}
  ])

groups = Group.create([
  {name: "Passing"},
  {name: "Rushing"},
  {name: "Skating"},
  {name: "Golf"}
  ])

user_groups = UserGroup.create([
  {user_id: users[0].id, group_id: groups[0].id, role: ["Organizer"]},
  {user_id: users[1].id, group_id: groups[0].id, role: ["Presenter"]},
  {user_id: users[2].id, group_id: groups[0].id, role: ["Participant"]},
  {user_id: users[3].id, group_id: groups[0].id, role: ["Participant"]},
  {user_id: users[0].id, group_id: groups[1].id, role: ["Presenter"]},
  {user_id: users[1].id, group_id: groups[1].id, role: ["Organizer"]},
  {user_id: users[2].id, group_id: groups[1].id, role: ["Participant"]},
  {user_id: users[3].id, group_id: groups[2].id, role: ["Organizer"]},
  {user_id: users[3].id, group_id: groups[3].id, role: ["Presenter"]}
  ])
