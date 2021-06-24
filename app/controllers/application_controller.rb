class ApplicationController < ActionController::Base
  before_action :config_permitted_parameters, if: :devise_controller?

  protected

  def config_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys[:email])
  end
end
