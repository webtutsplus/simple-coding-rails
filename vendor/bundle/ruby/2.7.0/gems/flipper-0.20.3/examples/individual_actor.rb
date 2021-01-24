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

user1 = User.new(1)
user2 = User.new(2)

puts "Stats for user1: #{stats.enabled?(user1)}"
puts "Stats for user2: #{stats.enabled?(user2)}"

puts "\nEnabling stats for user1...\n\n"
stats.enable(user1)

puts "Stats for user1: #{stats.enabled?(user1)}"
puts "Stats for user2: #{stats.enabled?(user2)}"
