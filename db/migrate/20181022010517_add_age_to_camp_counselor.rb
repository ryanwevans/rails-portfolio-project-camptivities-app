class AddAgeToCampCounselor < ActiveRecord::Migration[5.2]
  def change
    add_column :camp_counselors, :age, :string
  end
end
