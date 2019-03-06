module CampCounselorsHelper

  def camp_name(activity)
    Camp.find_by(id: activity.camp_id).name
  end

  def create_logic
    @counselor = CampCounselor.create(counselor_params)
    if @counselor.save
      session[:user_id] = @counselor.id
      redirect_to camp_counselor_path(@counselor)
    else
      flash[:notice] = "Invalid Entry - Please Try Again"
      redirect_to new_camp_counselor_path
    end
  end

  def update_logic
    if @counselor.update(counselor_params)
      redirect_to camp_counselor_path(@counselor)
    else
      flash[:notice] = "Invalid Entry - Please Try Again"
      redirect_to edit_camp_counselor_path
    end
  end

end
