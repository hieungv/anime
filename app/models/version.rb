class Version < ApplicationRecord
  has_many :videos

  validates_presence_of :name
end
