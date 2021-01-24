require File.expand_path('../example_setup', __FILE__)

require 'flipper'

adapter = Flipper::Adapters::Memory.new
flipper = Flipper.new(adapter)
stats = flipper[:stats]

# Some class that represents what will be trying to do something
class User
  attr_reader :id

  def initialize(id)
    @id = id
  end

  # Must respond to flipper_id
  alias_method :flipper_id, :id
end

total = 100_000

# create array of fake users
users = (1..total).map { |n| User.new(n) }

perform_test = lambda { |number|
  flipper[:stats].enable flipper.actors(number)

  enabled = users.map { |user|
    flipper[:stats].enabled?(user) ? true : nil
  }.compact

  actual = (enabled.size / total.to_f * 100).round(3)

  puts "percentage: #{actual.to_s.rjust(6, ' ')} vs #{number.to_s.rjust(3, ' ')}"
}

puts "percentage: Actual vs Hoped For"
[0.001, 0.01, 0.1, 1, 5, 10, 20, 30, 40, 50, 60, 70, 80, 90, 95, 99, 100].each do |number|
  perform_test.call number
end
