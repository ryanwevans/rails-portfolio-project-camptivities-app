class RemoveCounselorsNeededFromActivities < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :counselors_needed, :integer
  end
end
