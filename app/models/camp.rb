class Camp < ApplicationRecord
  validates_presence_of :name

  has_many :activities

end
