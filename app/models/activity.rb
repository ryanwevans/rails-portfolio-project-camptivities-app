class Activity < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :name

  validates_presence_of :description

  has_many :comments

  has_many :assignments
  has_many :camp_counselors, through: :assignments

  belongs_to :camp

  def self.sorted_asc
    order(name: :asc)
  end

end
