class MeetupsController < ApplicationController

  get "/meetups" do
    Meetup.all.to_json
  end

  post "/meetups" do
    m = Meetup.create(meetup_params)
    m.to_json(include: {:pets => {only: [:name, :id]}})
  end

  private

  def meetup_params
    allowed_params = %w(time location pet_ids)
    params.select { |param, val| allowed_params.include?(param) }
  end
end