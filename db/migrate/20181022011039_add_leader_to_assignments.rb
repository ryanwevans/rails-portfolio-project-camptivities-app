class AddLeaderToAssignments < ActiveRecord::Migration[5.2]
  def change
    add_column :assignments, :leader, :boolean, default: false
  end
end
