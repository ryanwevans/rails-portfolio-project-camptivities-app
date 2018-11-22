class SessionsController < ApplicationController
  skip_before_action :require_log_in, only: [:new, :create]

  def new
    @counselor = CampCounselor.new
  end

  # def create
  #   return head(:forbidden) unless counselor = CampCounselor.find_by(name: params[:camp_counselor][:name]).try(:authenticate, params[:camp_counselor][:password])
  #   session[:user_id] = counselor.id
  #   redirect_to camp_counselor_path(counselor)
  # end

  def create
    counselor = CampCounselor.find_by(name: params[:camp_counselor][:name])
    if counselor.try(:authenticate, params[:password])
      session[:user_id] = counselor.id
      redirect_to camp_counselor_path(counselor)
    else
      flash[:notice] = "Incorrect Name or Password!"
      redirect_to signin_path
    end
  end

  def destroy
    session.delete :user_id
    render :new
  end

end
