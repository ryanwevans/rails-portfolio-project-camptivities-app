module ActivitiesHelper
  def activity_admin_links
    if @current_user.admin
       link_to "Delete Activity", @activity, method: :delete, data: { confirm: "Delete This Activity?" }
    end
  end
end
