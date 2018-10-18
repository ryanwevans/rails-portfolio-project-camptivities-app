class Activity < ApplicationRecord
  has_many :assignments
  has_many :camp_counselors, through: :assignments
end
