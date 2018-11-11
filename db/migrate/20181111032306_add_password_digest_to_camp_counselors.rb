class AddPasswordDigestToCampCounselors < ActiveRecord::Migration[5.2]
  def change
    add_column :camp_counselors, :password_digest, :string
  end
end
