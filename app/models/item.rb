class Item < ApplicationRecord
  belongs_to :warehouse

  validates :category, presence: true
  validates :quantity, presence: true
end
