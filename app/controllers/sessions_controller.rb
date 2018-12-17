class SessionsController < ApplicationController
  skip_before_action :require_log_in, only: [:new, :create]

  def new
    @counselor = CampCounselor.new
  end

  def create
    if params[:camp_counselor]
      if counselor = CampCounselor.find_by(name: params[:camp_counselor][:name]).try(:authenticate, params[:camp_counselor][:password])
        session[:user_id] = counselor.id
        redirect_to camp_counselor_path(counselor)
      else
        flash[:notice] = "Please Try Again"
        redirect_to signin_path
      end
    elsif counselor = CampCounselor.find_or_create_by!(uid: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
      u.password_digest = auth['uid']
      end
      session[:user_id] = counselor.id
      redirect_to edit_camp_counselor_path(counselor)
    else
      flash[:notice] = "Please Try Again"
      redirect_to signin_path
    end
  end

  def destroy
    session.delete :user_id
    render :new
  end


  private

  def auth
    auth = request.env['omniauth.auth']
  end

end
