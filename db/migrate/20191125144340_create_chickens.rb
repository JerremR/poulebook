class CreateChickens < ActiveRecord::Migration[5.2]
  def change
    create_table :chickens do |t|
      t.string :name
      t.string :color
      t.string :species
      t.string :gender
      t.float :price
      t.date :birthdate
      t.string :photo
      t.text :presentation
      t.string :address
      t.references :owner, foreign_key: {to_table: :users }

      t.timestamps
    end
  end
end
