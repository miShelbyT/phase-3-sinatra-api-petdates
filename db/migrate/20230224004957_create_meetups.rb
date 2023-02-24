class CreateMeetups < ActiveRecord::Migration[6.1]
  def change
    create_table :meetups do |t|
      t.datetime :time
      t.string :location
    end
  end
end
