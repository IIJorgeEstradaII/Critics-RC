class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :role
      t.integer :critics_count, deafult: 0

      t.timestamps
    end
  end
end