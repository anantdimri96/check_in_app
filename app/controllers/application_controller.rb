class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

   before_action :configure_permitted_parameters, if: :devise_controller?
   before_action :authenticate_user! ,:only => [:index ,:show]
   skip_before_action :verify_authenticity_token



   def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
   devise_parameter_sanitizer.permit(:sign_up, keys: [:start_time])
   devise_parameter_sanitizer.permit(:sign_up, keys: [:end_time])
   devise_parameter_sanitizer.permit(:account_update, keys: [:name])
 end

 def set_session
   session[:source] = params[:q] if params[:q]
 end


end
