module CampCounselorsHelper

  def camp_name(activity)
    Camp.find_by(id: activity.camp_id).name
  end

end
