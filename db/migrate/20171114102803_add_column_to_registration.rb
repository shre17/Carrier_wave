class AddColumnToRegistration < ActiveRecord::Migration[5.0]
  def change
    add_column :registrations, :profile_pic, :string
  end
end
