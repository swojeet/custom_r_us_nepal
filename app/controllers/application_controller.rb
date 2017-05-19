class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :gender, :address, :city, :country, :phone_number, :date_of_birth])
      devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :gender, :address, :city, :country, :phone_number, :date_of_birth])
  end

  # private
  # def after_sign_out_path_for(resource_or_scope)
  #   root_path
  # end
end
