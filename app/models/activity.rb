class Activity < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :name

  has_many :assignments
  has_many :camp_counselors, through: :assignments
end
