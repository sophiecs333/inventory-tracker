class Item < ApplicationRecord
  CATEGORY = ["Avocado", "Lime", "Mango", "Papaya"]

  belongs_to :shipment
end
