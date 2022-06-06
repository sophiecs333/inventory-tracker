class Warehouse < ApplicationRecord
  has_many :items, dependent: :destroy

  validates :location, presence: true

end
