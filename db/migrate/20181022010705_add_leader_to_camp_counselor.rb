class AddLeaderToCampCounselor < ActiveRecord::Migration[5.2]
  def change
    add_column :camp_counselors, :leader, :boolean, default: false
  end
end
