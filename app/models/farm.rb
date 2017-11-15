class Farm < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  belongs_to :user
  has_many :products
  validates :name, presence: true
  validates :address, presence: true
end
