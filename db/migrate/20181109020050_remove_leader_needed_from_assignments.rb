class RemoveLeaderNeededFromAssignments < ActiveRecord::Migration[5.2]
  def change
    remove_column :assignments, :leader_needed, :boolean
  end
end
