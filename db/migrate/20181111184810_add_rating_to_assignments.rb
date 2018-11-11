class AddRatingToAssignments < ActiveRecord::Migration[5.2]
  def change
    add_column :assignments, :rating, :integer
  end
end
