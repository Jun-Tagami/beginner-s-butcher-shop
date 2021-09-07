class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:company_name, :company_tel, :zip_code, :prefecture_id, :address])
    devise_parameter_sanitizer.permit(:account_update, keys: [:company_name, :company_tel, :zip_code, :prefecture_id, :address])
  end
end
