class BasicInformationController < ApplicationController
  def index
    @basic = BasicInformation.all
  end
  def new 
    @basic = BasicInformation.new
  end
end
