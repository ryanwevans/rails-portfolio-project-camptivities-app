class CampCounselor < ApplicationRecord
  has_secure_password
  
  has_many :assignments
  has_many :activities, through: :assignments
end
