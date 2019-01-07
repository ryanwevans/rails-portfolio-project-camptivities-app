class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.string :name
      t.integer :rating
      t.boolean :filled, default: false
      t.belongs_to :camp_counselor, index: true, foreign_key: true
      t.belongs_to :activity, index: true, foreign_key: true

      t.timestamps
    end
  end
end
