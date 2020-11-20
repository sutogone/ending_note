class AssetsController < ApplicationController
  before_action :set_asset, only: [:edit,:update]
  def index
    @assets = Asset.includes(:user).order(created_at: :desc)
  end

  def new
    @asset = Asset.new
  end

  def create
    @asset = Asset.new(pet_params)
    if @asset.save
      redirect_to user_assets_path(current_user.id)
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if @asset.update(pet_params)
      redirect_to user_assets_path(current_user.id)
    else
      render :edit
    end
  end

  private
  def asset_params
    params.require(:asset).permit(:assets_category_id, :financial, :assets_details).merge(user_id: current_user.id)
  end

  def set_asset
    @asset = Asset.find(params[:id])
  end
end
