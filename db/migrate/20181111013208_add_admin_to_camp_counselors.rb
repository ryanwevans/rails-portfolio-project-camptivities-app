class AddAdminToCampCounselors < ActiveRecord::Migration[5.2]
  def change
    add_column :camp_counselors, :admin, :boolean
  end
end
