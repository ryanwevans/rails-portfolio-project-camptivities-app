class ChangeColumnNameInAssignments < ActiveRecord::Migration[5.2]
  def change
    rename_column :assignments, :leader, :leader_needed
  end
end
