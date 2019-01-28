module SessionsHelper

  def sign_in_logic
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
      redirect_to camp_counselor_path(counselor)
    else
      flash[:notice] = "Please Try Again"
      redirect_to signin_path
    end
  end

end
