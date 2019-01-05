class AddCampCounselorIdToComments < ActiveRecord::Migration[5.2]
  def change
    change_table :comments do |t|
      t.belongs_to :camp_counselor
      t.belongs_to :activity
    end
  end
end
