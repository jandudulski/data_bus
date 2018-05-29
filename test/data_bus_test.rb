require "test_helper"

class DataBusTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::DataBus::VERSION
  end

  def test_primitive_message
    received = nil
    bus = DataBus.new

    bus.register do |event|
      received = event
    end
    bus.publish("hello world")

    assert_equal "hello world", received
  end
end
