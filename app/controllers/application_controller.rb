class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_counselor
  before_action :require_log_in, except: [:new, :create, :home]

  helper_method :current_counselor

   def logged_in?
     !!current_counselor
   end


 private

   def require_log_in
     redirect_to root_path unless logged_in?
   end

   def current_counselor
     @current_counselor ||= CampCounselor.find(session[:user_id]) if session[:user_id]
   end

end
