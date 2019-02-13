class Camp < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :location
  validates_presence_of :description

  has_many :activities
  has_many :comments, through: :activities

  has_many :assignments
  has_many :camp_counselors, through: :assignments

end
