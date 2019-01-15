class AddLocationAndDescriptionToCamps < ActiveRecord::Migration[5.2]
  def change
    add_column :camps, :location, :string
    add_column :camps, :description, :text
  end
end
