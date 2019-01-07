class Comment < ApplicationRecord
  belongs_to :activity
  belongs_to :camp_counselor

  validates_presence_of :title
  validates_presence_of :comment
end
