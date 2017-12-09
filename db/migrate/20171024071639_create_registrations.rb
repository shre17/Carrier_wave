class CreateRegistrations < ActiveRecord::Migration[5.0]
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :gender
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
