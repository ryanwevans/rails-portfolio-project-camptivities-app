class Camp < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :location
  validates_presence_of :description

  has_many :activities

end
