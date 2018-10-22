class AddCounselorsNeededToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :counselors_needed, :integer
  end
end
