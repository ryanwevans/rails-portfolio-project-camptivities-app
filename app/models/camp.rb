class Camp < ApplicationRecord
  validates_presence_of :name

  has_many :activities
  has_many :camp_counselors, through: :activities
end
