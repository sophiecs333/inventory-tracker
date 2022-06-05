class Warehouse < ApplicationRecord
  has_many :items

  validates :location, presence: true
end
