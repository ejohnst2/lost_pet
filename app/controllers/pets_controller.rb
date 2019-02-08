class PetsController < ApplicationController
  helper_method :index

  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.save

    redirect_to pet_path(@pet)
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def pet_params
    params.require(:pet).permit(:found, :name, :location, :species)
  end
end
