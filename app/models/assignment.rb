class Assignment < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :name

  belongs_to :camp_counselor
  belongs_to :activity
end
