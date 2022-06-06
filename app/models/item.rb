class Item < ApplicationRecord
  belongs_to :warehouse

  validates :category, presence: true
end
