class PetsController < ApplicationController
  before_action :set_pet, only: [:edit,:update]
  def index
    @pets = Pet.includes(:user).order(created_at: :desc)
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to user_pets(current_user.id)
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if @pet.update(pet_params)
      redirect_to user_pets(current_user.id)
    else
      render :edit
    end
  end

  private
  def pet_params
    params.require(:pet).permit(:pet_name, :pet_breed, :pet_age, :pet_details).merge(user_id: current_user.id)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end
end
