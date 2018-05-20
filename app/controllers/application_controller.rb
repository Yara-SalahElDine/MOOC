class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :gender, :date_of_birth, :password, :password_confirmation, :avatar, :avatar_cache, :remove_avatar])
    #devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :gender, :date_of_birth, :password, :password_confirmation, :current_password])
  end
end
