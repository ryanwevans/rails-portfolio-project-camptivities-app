module AssignmentsHelper

  def set_index_variables
    if params[:camp_counselor_id]
      @counselor = CampCounselor.find_by(id: params[:camp_counselor_id])
      @assignments = @counselor.assignments
    else
      @assignments = Assignment.all
    end
    @camps = Camp.all
  end

  def create_logic
    @assignment = Assignment.create(assignment_params)
    if @assignment.save!
      redirect_to assignments_path(@assignment)
    else
      flash[:notice] = "Unable to Create Assignments for New Activity - Please Try Again"
      redirect_to new_activity_path
    end
  end

  def update_logic
    if params[:assignment]==nil
      flash[:notice] = "Invalid Entry - Please Try Again"
      redirect_to camp_counselor_assignments_path(current_user)
    elsif @assignment.update(assignment_params)
      redirect_to camp_counselor_assignments_path(current_user)
    end
  end

end
