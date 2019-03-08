class CampCounselor < ApplicationRecord
  has_secure_password
  validates_presence_of :name
  validates_uniqueness_of :name

  validates_presence_of :email
  validates_uniqueness_of :email

  has_many :assignments
  has_many :activities, through: :assignments

  has_many :camps, through: :assignments

  has_many :comments
  # look into this improvement suggestion from Jennifer (Jenn) Hansen during my rails project assessment:
  has_many :commented_activities, through: :comments, source: :activity
  # maybe source: :activities


end
