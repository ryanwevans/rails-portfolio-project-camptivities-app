class SessionsController < ApplicationController
  skip_before_action :require_log_in, only: [:new, :create]

  def new
    @counselor = CampCounselor.new
  end

#OmniAuth Login
  def create
    @counselor = CampCounselor.find_or_create_by(id: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
    end

    session[:user_id] = @counselor.id

    redirect_to camp_counselor_path(@counselor)
  end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end


    # def create
    #   @counselor = CampCounselor.find_by(name: params[:camp_counselor][:name])
    #   @counselor.try(:authenticate, params[:password])
    #   if @counselor
    #     session[:user_id] = @counselor.id
    #     redirect_to camp_counselor_path(@counselor)
    #   else
    #     redirect_to signin_path
    #   end
    # end



  private

  def auth
    request.env['omniauth.auth']
  end
end
