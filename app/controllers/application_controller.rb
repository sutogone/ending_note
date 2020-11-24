class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller? 



  private

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys:[:medical_record, :email])
      devise_parameter_sanitizer.permit(:sign_in,keys:[:medical_record])
    end

    def after_sign_in_path_for(resource)
      users_path
    end
end
