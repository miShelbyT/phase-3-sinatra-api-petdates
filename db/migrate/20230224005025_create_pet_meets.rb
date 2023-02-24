class CreatePetMeets < ActiveRecord::Migration[6.1]
  def change
    create_table :pet_meets do |t|
      t.belongs_to :pet, foreign_key: true
      t.belongs_to :meetup, foreign_key: true
    end
  end
end
