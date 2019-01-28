module ActivitiesHelper
  def activity_delete_link
    if current_user.admin
       link_to "Delete Activity", @activity, method: :delete, data: { confirm: "Delete This Activity?" }
    end
  end

  def activity_edit_link
    if current_user.admin
      link_to "Edit this Activity", edit_activity_path(@activity)
    end
  end

  def activity_index_header
    if @camp
      "#{@camp.name} Activities"
    else
      "Activities"
    end
  end

  
  def create_logic
    @activity = Activity.create(activity_params)
    if @activity.save
      2.times do
        @activity.assignments.create(:activity_id => @activity.id, :filled => false, :rating => 0)
      end
      redirect_to activity_path(@activity)
    else
      if @activity.name==""
        flash[:notice] = "Activity Name is required"
      elsif @activity.description==""
        flash[:notice] = "Description is required"
      elsif @activity.camp_id==""
        flash[:notice] = "Camp Name is required"
      end
      redirect_to new_activity_path
    end
  end

  def update_logic
    if @activity.update(activity_params)
      redirect_to @activity
    else
      if @activity.name==""
        flash[:notice] = "Activity Name is required"
      else @activity.description==""
        flash[:notice] = "Description is required"
      end
      redirect_to :edit
    end
  end


end
