class Meetup < ActiveRecord::Base
  has_many :pet_meets
  has_many :pets, through: :pet_meets

  def formatted_time
    time.strftime("%A, %b %d %Y %l:%M %p")
  end
end