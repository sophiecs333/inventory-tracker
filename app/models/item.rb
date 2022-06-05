class Item < ApplicationRecord
  CATEGORY = ["Avocado", "Lime", "Mango", "Papaya"]

  # belongs_to :shipment

  validates :category, presence: true
  validates :quantity, presence: true
end
