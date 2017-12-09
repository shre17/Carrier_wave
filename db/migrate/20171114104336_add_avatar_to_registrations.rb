class AddAvatarToRegistrations < ActiveRecord::Migration[5.0]
  def change
    add_column :registrations, :avatar, :string
  end
end
