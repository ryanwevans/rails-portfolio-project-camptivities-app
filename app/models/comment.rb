class Comment < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :comment

  belongs_to :activity
  belongs_to :camp_counselor

end
