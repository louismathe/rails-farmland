class Farm < ApplicationRecord
  belongs_to :user
  has_many :products
  validates :name, presence: true
  validates :address, presence: true
end
