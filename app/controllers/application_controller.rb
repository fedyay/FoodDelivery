class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def access_denied(exception)
    flash[:danger] = exception.message
    redirect_to root_url
  end

  before_action :configure_permited_parameters, if: :devise_controller?

  private

  def configure_permited_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone, :address])
  end
end
