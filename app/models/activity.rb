class Activity < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :name

  validates_presence_of :description

  # has_many :assignments
  # has_many :camp_counselors, through: :assignments
  #
  # has_many :comments
  # has_many :camp_counselors, through: :comments

  # belongs_to :camp


  belongs_to :camp

  has_many :assignments
  has_many :camp_counselors, through :assignments

  has_many :comments

end
