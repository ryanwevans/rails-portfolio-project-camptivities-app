class CreateCampCounselors < ActiveRecord::Migration[5.2]
  def change
    create_table :camp_counselors do |t|
      t.string :name
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
