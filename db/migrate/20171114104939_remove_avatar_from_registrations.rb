class RemoveAvatarFromRegistrations < ActiveRecord::Migration[5.0]
  def change
    remove_column :registrations, :avatar, :string
  end
end
