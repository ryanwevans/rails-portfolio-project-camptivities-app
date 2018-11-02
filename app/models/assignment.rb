class Assignment < ApplicationRecord
  belongs_to :camp_counselor, optional: true
  belongs_to :activity
end
