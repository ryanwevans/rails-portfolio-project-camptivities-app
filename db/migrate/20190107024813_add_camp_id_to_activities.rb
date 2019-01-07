class AddCampIdToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :camp_id, :integer
  end
end
