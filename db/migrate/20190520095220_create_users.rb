class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :role
      t.string :name
      t.string :surname
      t.string :email
      t.string :password
      t.string :goals

      t.timestamps
    end
  end
end
