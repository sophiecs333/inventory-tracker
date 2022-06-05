class Item < ApplicationRecord
  CATEGORY = ["Avocado", "Lime", "Mango", "Papaya"]

  belongs_to :warehouse

  validates :category, presence: true
  validates :quantity, presence: true
end
