class AddEmailToCampCounselors < ActiveRecord::Migration[5.2]
  def change
    add_column :camp_counselors, :email, :string
  end
end
