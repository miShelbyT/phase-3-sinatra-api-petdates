class PetsController < ApplicationController

  get "/pets" do
    Pet.all.to_json(only: [:id, :name, :species, :breed])
  end

  get "/pets/:id" do
    pet = Pet.find(params[:id])
    pet.to_json
  end

end