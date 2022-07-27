class UsersController < ApplicationController
  require "csv"
  def import
    file = params[:file]
    return redirect_to groups_path, notice: "Only CSV accepted" if !file.content_type == "type/csv"
    file = File.open(file)
    csv = CSV.parse(file, headers: true)
    csv.each do |row|
      user_hash = {}
      group_hash = {}
      user_hash[:first_name] = row['First Name']
      user_hash[:last_name] = row['Last Name']
      group_hash[:name] = row['Group']
      user = User.create(user_hash)
      group = Group.create(group_hash)
      UserGroup.create(user_id: user.id, group_id: group.id, role: [row['Role']])
    end
    redirect_to groups_path notice: "Users and Groups imported"
  end

  def new
  end

  def create
  end

end
