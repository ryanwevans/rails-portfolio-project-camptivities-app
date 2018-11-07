class RemoveColumnsFromCampCounselors < ActiveRecord::Migration[5.2]
  def change
    remove_column :camp_counselors, :email, :string
    remove_column :camp_counselors, :password_digest, :string
  end
end
