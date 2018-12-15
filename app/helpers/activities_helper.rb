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

  def activity_assignment_availability
    if @assignment.filled
      "One assignment is full"
    else
      "This assignment is still open"
      form_for @assignment do |f|
      f.hidden_field :camp_counselor_id, :value => current_user.id
      f.hidden_field :filled, :value => true
      f.submit "Signup to Oversee This Activity!"
      end
    end
  end
  
end

# if !assignment.filled
#   link_to "Sign Up For This Assignment", assignment_path(assignment)
# else
#   "One Assignment is Full"
# end
