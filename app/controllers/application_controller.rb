class ApplicationController < ActionController::Base
	before_action :configure_devise_parameters, if: :devise_controller?

	protected

	def configure_devise_parameters
	  devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:firstname, :lastname, :username, :email, :password, :password_confirmation)}
	  devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:firstname, :lastname, :is_alive, :email, :password, :password_confirmation)}
	end
end
