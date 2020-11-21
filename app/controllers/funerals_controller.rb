class FuneralsController < ApplicationController
  before_action :set_funeral, only: [:edit,:update]
  def index
    @funerals = Funeral.includes(:user).order(created_at: :desc)
  end

  def new
    @funeral = Funeral.new
  end

  def create
    @funeral = Funeral.new(funeral_params)
    if @funeral.save
      redirect_to user_funerals_path(current_user.id)
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if @funeral.update(funeral_params)
      redirect_to user_funerals_path(current_user.id)
    else
      render :edit
    end
  end

  private
  def funeral_params
    params.require(:funeral).permit(:chief_mourner, :funerals_details, :religion_id, :funeral_scale_id, :funeral_expenses_id, :wake_place_id, :funeral_place_id, :burial_place_id).merge(user_id: current_user.id)
  end

  def set_funeral
    @funeral = Funeral.find(params[:id])
  end
end
