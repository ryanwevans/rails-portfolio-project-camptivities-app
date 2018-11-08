class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user
  before_action :require_log_in

  helper_method :current_user
  helper_method :logged_in?

   def logged_in?
     !!current_user
   end


 private

   def require_log_in
     redirect_to root_path unless logged_in?
   end

   def current_user
     @current_user ||= CampCounselor.find(session[:user_id]) if session[:user_id]
   end

end
