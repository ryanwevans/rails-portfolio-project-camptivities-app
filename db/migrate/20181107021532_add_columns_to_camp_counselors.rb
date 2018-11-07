class AddColumnsToCampCounselors < ActiveRecord::Migration[5.2]
  def change
    add_column :camp_counselors, :uid, :string
    add_column :camp_counselors, :provider, :string
  end
end
