class Car < ApplicationRecord
  CONDITIONS = %w(new used).freeze
  
  MONEY_VALIDATION = {
    greater_than_or_equal_to: 1,
    message: "must be greater than or equal to $1.00"
  }.freeze

  monetize :price_cents, numericality: MONEY_VALIDATION

  validates :brand, :model, :condition, presence: true
  validates :condition, inclusion: { in: CONDITIONS }

  belongs_to :dealership
end
