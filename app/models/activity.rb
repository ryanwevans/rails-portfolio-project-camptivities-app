class Activity < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :name

  has_many :assignments
  has_many :camp_counselors, through: :assignments

  def counselors_assigned
    Assignments.where((activity_id: self.id) && (camp_counselor_id: !nil)).count
  end

  def num_of_openings
    self.counselors_needed-self.counselors_assigned
  end
end
