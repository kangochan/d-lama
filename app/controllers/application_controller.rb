class ApplicationController < ActionController::Base
  def after_sign_out_path_for(resource)
    new_user_session_path
  end

  def after_sign_in_path_for(resource)
    edit_user_path(current_user)
  end

  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end
end
