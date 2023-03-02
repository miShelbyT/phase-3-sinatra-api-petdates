class PetsController < ApplicationController

  get "/pets" do
    Pet.all.to_json(only: [:id, :image_url])
  end

  get "/pets/:id" do
    pet = Pet.find(params[:id])
    pet.to_json(methods: [:age], include: {:meetups => 
      { methods: [:formatted_time], include: {:pets => { only: :name }}}
      })
  end

  post "/pets" do
    binding.pry
  end

end