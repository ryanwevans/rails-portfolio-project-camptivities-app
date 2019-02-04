class Comment < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :content

  belongs_to :activity
  belongs_to :camp_counselor, optional: true

end
