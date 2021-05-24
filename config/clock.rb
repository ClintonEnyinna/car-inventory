require 'clockwork'
require './config/boot'
require './config/environment'

module Clockwork
  handler do |job, time|
    puts "Running #{job}, at #{time}"
  end

  every(1.month, 'Depreciate car prices') do
    DepreciatePriceJob.perform_later
  end
end