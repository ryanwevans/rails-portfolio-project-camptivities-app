class RemoveLeaderFromCampCounselors < ActiveRecord::Migration[5.2]
  def change
    remove_column :camp_counselors, :leader, :boolean
  end
end
