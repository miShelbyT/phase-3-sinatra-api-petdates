class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :gender
      t.string :species
      t.string :breed
      t.string :size
      t.date :birthdate
      t.belongs_to :user, foreign_key: true
    end
  end
end
