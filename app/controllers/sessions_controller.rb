class SessionsController < ApplicationController

  def new
    @session = Session.new
  end

  def create
    @counselor = CampCounselor.find(params[:counselor][:name])
    @counselor.try(:authenticate, params[:password])
    if @counselor
      session[:user_id] = @counselor.id
      redirect_to camp_counselor_path(@counselor)
    else
      redirect_to signin_path
    end
  end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end
end
