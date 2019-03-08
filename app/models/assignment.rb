class Assignment < ApplicationRecord
  validates_presence_of :rating

  belongs_to :camp_counselor, optional: true
  belongs_to :activity
  belongs_to :camp, optional: true

  def self.order_by_filled
    order(:filled)
  end

end
