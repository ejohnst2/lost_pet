class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.date :found
      t.string :location

      t.timestamps
    end
  end
end
