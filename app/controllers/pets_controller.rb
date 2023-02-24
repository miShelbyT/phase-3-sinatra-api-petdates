class PetsController < ApplicationController

  get "/pets" do
    Pet.all.to_json(only: [:id, :name, :species, :breed, :image_url], methods: [:age])
  end

  get "/pets/:id" do
    pet = Pet.find(params[:id])
    pet.to_json(include: {:meetups => {methods: [:formatted_time]}}, methods: [:age])
  end

end