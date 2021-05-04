class ApplicationController < ActionController::Base
  before_action :configure_permitted_paramater, if: :devise_controller?
  private
  def configure_permitted_paramater
    devise_parameter_sanitizer.permit(:sign_up,keys:[:nickname,:last_name,:first_name,:last_name_kana,:first_name_kana])
  end
end
