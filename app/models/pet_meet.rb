class PetMeet < ActiveRecord::Base
  belongs_to :pet
  belongs_to :meetup
end