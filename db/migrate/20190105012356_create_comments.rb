class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :content
      t.belongs_to :camp_counselor
      t.belongs_to :activity

      t.timestamps null: false
    end
  end
end
