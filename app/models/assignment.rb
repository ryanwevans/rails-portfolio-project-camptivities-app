class Assignment < ApplicationRecord
  validates_presence_of :rating

  belongs_to :camp_counselor, optional: true
  belongs_to :activity

end
