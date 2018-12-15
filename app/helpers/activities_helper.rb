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

end
