class BasicInformationController < ApplicationController
  before_action :set_basic, only: [:edit,:update]
  def index
    @basic = BasicInformation.all
  end
  def new 
    @basic = BasicInformation.new
  end
  def create
    
  end

  private
  def basic_params
    params.require(:basic_information).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :birthday, :address, :domicile, :blood_type_id).merge(user_id: current_user.id)
  end

  def set_basic
    @basic = BasicInformation.find(params[:id])
  end

end
