class UsersController < ApplicationController

  get "/users" do 
    include_pets(User.all)
  end

  get "/users/:id" do
    user = User.find(params[:id])
    include_pets(user)
  end

  private

  def user_params
    allowed_params = %w(first_name last_name city phone_number email)
    params.filter {|param, val| allowed_params.include?(params)}
  end

  def include_pets(user_or_users)
    if params.include?(:include_pets)
      user_or_users.to_json(include: {pets: {:only => [:id, :name, :image_url]}})
    else 
      user_or_users.to_json
    end
  end
end