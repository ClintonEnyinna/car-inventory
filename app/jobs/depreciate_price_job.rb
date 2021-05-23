class DepreciatePriceJob < ApplicationJob
  queue_as :default

  def perform
    Car.find_each do |car|
      car_price = car.price_cents.clamp(0, Float::INFINITY)

      car.price = Money.new(car_price) * 0.98
      car.save!
    end
  end

end