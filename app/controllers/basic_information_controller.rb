class BasicInformationController < ApplicationController
  before_action :set_basic, only: [:edit,:update]
  def index
    @basic = BasicInformation.all
  end
  def new 
    @basic = BasicInformation.new
  end
  def create
    @basic = BasicInformation.new(basic_params)
    if @basic.save
      redirect_to user_basic_information_index_path(current_user.id)
    else
      render :new
    end
  end

  private
  def basic_params
    params.require(:basic_information).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :birthday, :postal_code, :prefecture_id, :city, :address, :building, :blood_type_id).merge(user_id: current_user.id)
  end

  def set_basic
    @basic = BasicInformation.find(params[:id])
  end

end
