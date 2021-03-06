class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  # Catch all CanCan errors and alert the user of the exception
  rescue_from CanCan::AccessDenied do | exception |
    redirect_to root_url, alert: exception.message
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password,
      :password_confirmation, :remember_me, :avatar, :avatar_cache, :name) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password,
      :password_confirmation, :current_password, :avatar, :avatar_cache, :name, :admin) }
  end
end
