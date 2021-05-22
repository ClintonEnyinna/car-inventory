class Dealership < ApplicationRecord
  validates :name, :address, presence: true
  validates_associated :cars

  has_many :cars
end
